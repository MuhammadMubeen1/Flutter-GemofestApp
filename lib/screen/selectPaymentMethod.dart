import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gamefestival/common/custom_button.dart';
import 'package:gamefestival/screen/confirmMethod.dart';
import 'package:google_fonts/google_fonts.dart';

class selectPaymentMethod extends StatefulWidget {
  const selectPaymentMethod({super.key});

  @override
  State<selectPaymentMethod> createState() => _selectPaymentMethodState();
}

List<String> options = ['Option 1', 'Option 2'];

class _selectPaymentMethodState extends State<selectPaymentMethod> {
  String currentOption = options[0];
  bool isLoading = false;
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff28293F),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => (confirmMethod())),
            );
          },
          text: 'Add',
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
              // Handle back button press
            },
          ),
          centerTitle: true,
          title: Text(
            'Payment Method',
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
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
            child: Column(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Colors.grey), // Set the border color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/bank1.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Bank Transfer',
                            style: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      value: 1,
                      groupValue: _value,
                      onChanged: (val) {
                        setState(() {
                          _value = val;
                        });
                      },
                      activeColor: Color(0xffFFC400),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Colors.grey), // Set the border color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/bank2.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Jazz Cash',
                            style: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      value: 2,
                      groupValue: _value,
                      onChanged: (val) {
                        setState(() {
                          _value = val;
                        });
                      },
                      activeColor: Color(0xffFFC400),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Colors.grey), // Set the border color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RadioListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/bank3.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Easypaisa',
                            style: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      value: 3,
                      groupValue: _value,
                      onChanged: (val) {
                        setState(() {
                          _value = val;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.trailing,
                      activeColor: Color(0xffFFC400),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Colors.grey), // Set the border color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage('assets/bank4.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sadapay',
                            style: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                      value: 4,
                      groupValue: _value,
                      onChanged: (val) {
                        setState(() {
                          _value = val;
                        });
                      },
                      activeColor: Color(0xffFFC400),
                    ),
                  ),

                  // RadioListTile(
                  //     title: Text('Option 1'),
                  //     value: options[0],
                  //     groupValue: currentOption,
                  //     onChanged: (value) {
                  //       currentOption = value.toString();
                  //     }),
                  // RadioListTile(
                  //     title: Text('Option 2'),
                  //     value: options[1],
                  //     groupValue: currentOption,
                  //     onChanged: (value) {
                  //       currentOption = value.toString();
                  //     }),
                  // RadioListTile(
                  //     title: Text('Option 3'),
                  //     value: options[2],
                  //     groupValue: currentOption,
                  //     onChanged: (value) {
                  //       currentOption = value.toString();
                  //     }),
                  // RadioListTile(
                  //     title: Text('Option 4'),
                  //     value: options[3],
                  //     groupValue: currentOption,
                  //     onChanged: (value) {
                  //       currentOption = value.toString();
                  //     }),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                height: 5,
                color: Colors.white24,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Card Number',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade300,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'CVC',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade300,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
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
                                  hintStyle:
                                      const TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Expire Date',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey.shade300,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
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
                                  hintText: 'Pick Date',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
              CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                side: BorderSide(color: Colors.white70),
                title: const Text(
                  "Save Card Information",
                  style: TextStyle(
                      color: Colors.white60, fontWeight: FontWeight.w500),
                ),
                activeColor: Color(0xffFFC400),
                value: timeDilation != 1.0,
                onChanged: (bool? value) {
                  setState(() {
                    timeDilation = value! ? 10.0 : 1.0;
                  });
                },
              ),
            ]),
          ),
        ));
  }
}
