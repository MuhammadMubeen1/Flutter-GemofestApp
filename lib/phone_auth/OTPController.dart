import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/common/bottom_nav_bar.dart';
import 'package:pinput/pinput.dart';

class OTPControllerScreen extends StatefulWidget {
  final String phone;
  final String codeDigits;

  OTPControllerScreen({required this.phone, required this.codeDigits});

  @override
  _OTPControllerScreenState createState() => _OTPControllerScreenState();
}

class _OTPControllerScreenState extends State<OTPControllerScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode _pinOTPCodeFocus = FocusNode();
  String? verificationCode;

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.grey,
    ),
  );

  @override
  void initState() {
    super.initState();
    verifyPhoneNumber();
  }

  verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "${widget.codeDigits + widget.phone}",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          if (value.user != null) {
            // Save data to Firestore after successful authentication
            saveDataToFirestore(value.user!.uid);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (c) => BottomNavBar()));
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message.toString()),
            duration: Duration(seconds: 5),
          ),
        );
      },
      codeSent: (String vID, int? resendToken) {
        setState(() {
          verificationCode = vID;
          _pinOTPCodeController.text =
              vID; // Automatically fill in the OTP code
        });
      },
      codeAutoRetrievalTimeout: (String vID) {
        setState(() {
          verificationCode = vID;
          _pinOTPCodeController.text =
              vID; // Automatically fill in the OTP code
        });
      },
      timeout: Duration(seconds: 60),
    );
  }

  // Save user data to Firestore
  void saveDataToFirestore(String uid) {
    FirebaseFirestore.instance.collection('users').doc(uid).set({
      'phone': widget.phone,
      // Add more fields as needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28293F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Image.asset(
              "assets/player.png",
              height: 300,
            ),
          ),
          Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  verifyPhoneNumber();
                },
                child: Text(
                  "Verifying : ${widget.codeDigits}-${widget.phone}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Pinput(
              length: 6,
              focusNode: _pinOTPCodeFocus,
              controller: _pinOTPCodeController,
              pinAnimationType: PinAnimationType.rotation,
              onSubmitted: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                    verificationId: verificationCode!,
                    smsCode: pin,
                  ))
                      .then((value) {
                    if (value.user != null) {
                      // Save data to Firestore after successful authentication
                      saveDataToFirestore(value.user!.uid);
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => BottomNavBar()),
                      );
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Invalid OTP"),
                      duration: Duration(seconds: 5),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
