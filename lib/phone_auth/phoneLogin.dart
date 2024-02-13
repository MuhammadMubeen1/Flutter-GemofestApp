import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/common/custom_button.dart';
import 'package:gamefestival/phone_auth/OTPController.dart';

class phoneLogin extends StatefulWidget {
  const phoneLogin({super.key});

  @override
  State<phoneLogin> createState() => _phoneLoginState();
}

class _phoneLoginState extends State<phoneLogin> {
  String dialCodeDigits = "+00";
  bool isLoading = false;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28293F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: const Image(
                    image: AssetImage('assets/player.png'),
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Phone (OTP) Authentication",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Add your phone number. We'll send you a verification code",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white38),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CountryCodePicker(
                            dialogTextStyle: TextStyle(color: Colors.white),
                            onChanged: (country) {
                              setState(() {
                                dialCodeDigits = country.dialCode!;
                              });
                            },
                            initialSelection: "US",
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            favorite: ["+1", "US", "+92", "PAK"],
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: _controller,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone",
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   color: Colors.white,
                //   child: SizedBox(
                //     width: 200,
                //     height: 50,
                //     child: CountryCodePicker(
                //       dialogTextStyle: TextStyle(color: Colors.white),
                //       onChanged: (country) {
                //         setState(() {
                //           dialCodeDigits = country.dialCode!;
                //         });
                //       },
                //       initialSelection: "PK",
                //       showCountryOnly: false,
                //       showOnlyCountryWhenClosed: false,
                //       favorite: ["+1", "US", "+92", "PAK"],
                //     ),
                //   ),
                // ),

                // Container(
                //   height: 85,
                //   margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: "Phone Number",
                //       hintStyle: TextStyle(color: Colors.white),
                //       prefix: Padding(
                //         padding: EdgeInsets.all(4),
                //         child: Text(
                //           dialCodeDigits,
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: BorderSide(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //     maxLength: 12,
                //     keyboardType: TextInputType.number,
                //     controller: _controller,
                //     style: TextStyle(
                //         color: Colors.white), // Set text color to white
                //   ),
                // ),

                // Container(
                //   margin: EdgeInsets.all(15),
                //   width: double.infinity,
                //   child: ElevatedButton(
                //     onPressed: () {
                //       Navigator.of(context).push(MaterialPageRoute(
                //           builder: (c) => OTPControllerScreen(
                //                 phone: _controller.text,
                //                 codeDigits: dialCodeDigits,
                //               )));
                //     },
                //     child: Text(
                //       'Next',
                //       style: TextStyle(
                //           color: Colors.white, fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),

                // TextFormField(
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.w400,
                //       color: Colors.grey.shade300),
                //   cursorColor: Color(0xffFFC400),
                //   onChanged: (value) {
                //     setState(() {
                //       _controller.text = value;
                //     });
                //   },
                //   keyboardType: TextInputType.phone,
                //   controller: _controller,
                //   decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: const BorderSide(
                //           color: Colors.grey,
                //           width: 1.0,
                //         ),
                //       ),
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: const BorderSide(
                //           color: Colors.grey,
                //           width: 1.0,
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: const BorderSide(
                //           color: Colors.grey,
                //           width: 2.0,
                //         ),
                //       ),
                //       hintText: 'Enter Phone Number',
                //       hintStyle: const TextStyle(
                //           color: Colors.grey,
                //           fontSize: 16,
                //           fontWeight: FontWeight.w500)),
                // ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFC400),
                    textStyle: TextStyle(fontSize: 18),
                    minimumSize: Size.fromHeight(50),
                  ),
                  onPressed: () async {
                    if (_controller.text.isEmpty ||
                        !_isValidPhoneNumber(_controller.text)) {
                      // Show an error message
                      _showErrorDialog("Please enter a valid phone number");
                      return;
                    }

                    if (isLoading) return;
                    setState(() {
                      isLoading = true;
                    });

                    await Future.delayed(Duration(seconds: 5));

                    if (mounted) {
                      setState(() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                          builder: (c) => OTPControllerScreen(
                            phone: _controller.text,
                            codeDigits: dialCodeDigits,
                          ),
                        ))
                            .then((_) {
                          // This code will be executed when the OTP screen is popped.
                          if (mounted) {
                            setState(() {
                              isLoading = false; // Stop the progress bar.
                            });
                          }
                        });
                      });
                    }
                  },
                  child: isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "Please Wait...",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      : Text(
                          "Verify",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ))

                // CustomButton(
                //   onPressed: () async {
                //     // Set loading to true to show progress bar
                //     setState(() {
                //       isLoading = true;
                //     });

                //     // Simulate an asynchronous task (e.g., API call, validation)
                //     await Future.delayed(Duration(seconds: 5));

                //     // Reset loading state and navigate to the OTPControllerScreen
                // setState(() {
                //   isLoading =true;
                //   Navigator.of(context).push(MaterialPageRoute(
                //     builder: (c) => OTPControllerScreen(
                //       phone: _controller.text,
                //       codeDigits: dialCodeDigits,
                //     ),
                //   ));
                //});
                //   },
                //   text: isLoading ? '' : 'Verify Phone Number',
                //   color: Colors.white,
                //   height: 51,
                //   width: 360,
                //   isLoading: isLoading,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _isValidPhoneNumber(String phoneNumber) {
    // You can add more complex validation logic here
    return phoneNumber.length >= 10;
  }

  // Helper method to show an error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
