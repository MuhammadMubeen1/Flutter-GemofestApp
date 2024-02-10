import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/common/bottom_nav_bar.dart';
import 'package:gamefestival/common/custom_button.dart';
import 'package:gamefestival/screen/selectPaymentMethod.dart';
import 'package:google_fonts/google_fonts.dart';

class confirmMethod extends StatefulWidget {
  const confirmMethod({super.key});

  @override
  State<confirmMethod> createState() => _confirmMethodState();
}

class _confirmMethodState extends State<confirmMethod> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff28293F),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => (BottomNavBar())),
            );
          },
          text: 'Confirm',
          color: Colors.white,
          height: 51,
          width: 320,
          isLoading: isLoading,
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff28293F),
          leading: IconButton(
            icon: const ImageIcon(
              AssetImage('assets/backword.png'),
              size: 35,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Confirm Payment',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
          actions: [],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (selectPaymentMethod())),
                      );
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: Colors.white70,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Container(
                    height: 150,
                    width: 338,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffFFC400),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bank Credit Card",
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage('assets/mastercard.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '0765 **** **** **96',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Promo Code ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '(Optional)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFFC400),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Type Here',
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$9.00',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 5,
                color: Colors.white24,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tax',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$2.00',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 5,
                color: Colors.white24,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$11.00',
                    style: TextStyle(
                        fontSize: 19,
                        color: Color(0xffFFC400),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ]),
          ),
        ));
  }
}
