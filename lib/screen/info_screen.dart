import 'package:flutter/material.dart';
import 'package:gamefestival/screen/home.dart';
import 'package:gamefestival/phone_auth/phoneLogin.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../common/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
            globalBackgroundColor: Color(0xff28293F),
            scrollPhysics: BouncingScrollPhysics(),
            pages: [
              PageViewModel(
                titleWidget: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Welcome to Gamofest',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                bodyWidget: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffafafaf),
                  ),
                ),

                image: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/logo.png',
                    height: 500,
                    width: 500,
                  ),
                ),

                // footer: ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(builder: (context) => LoginScreen()),
                //     );
                //   },
                //   child: const Text("Let's Go!"),
                // ),
              ),
              PageViewModel(
                titleWidget: Image.asset(
                  'assets/logo2.png',
                  height: 100,
                  width: 250,
                ),
                bodyWidget: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Color(0xffafafaf)),
                ),
                image: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/player.png',
                    height: 300,
                    width: 300,
                  ),
                ),
              )
            ],
            onDone: () {
              // ap.isSignedIn == true
              //     ? Navigator.push(
              //         context, MaterialPageRoute(builder: (context) => Home()))
              //     : Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => phoneLogin()));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => phoneLogin()));
            },
            onSkip: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => phoneLogin()),
              );
            },
            showSkipButton: true,
            showNextButton: false,
            showDoneButton: true,
            skip: Text(
              'Skip',
              style: TextStyle(fontSize: 17, color: Color(0xffAFAFAF)),
            ),
            done: InkWell(
              onTap: () {
                // ap.isSignedIn == true
                //     ? Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => Home()))
                //     : Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => phoneLogin()));
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => phoneLogin()));
              },
              child: Text(
                'Done',
                style: TextStyle(fontSize: 17, color: Color(0xffAFAFAF)),
              ),
            ),
            dotsDecorator: DotsDecorator(
                size: Size.square(10.0),
                activeSize: Size(30.0, 8.0),
                color: Colors.black26,
                activeColor: Color(0xFFFFC400),
                spacing: EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)))),
      ),
    );
  }
}




// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController(initialPage: 0);
//   int _currentPage = 0;
//   final List<Map<String, String>> _pages = [
//     {
//       'title': 'Welcome to Gamofest',
//       'body':
//           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.',
//       'image': 'assets/logo.png',
//     },
//     {
//       'title': 'assets/logo2.png', // Add the image path here
//       'body':
//           'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
//       'image': 'assets/player.png',
//     },
//   ];

//   void _nextPage() {
//     if (_currentPage < _pages.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.ease,
//       );
//       _onPageChanged(_currentPage + 1); // Update current page index
//     }
//   }

//   void _previousPage() {
//     if (_currentPage > 0) {
//       _pageController.previousPage(
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.ease,
//       );
//     }
//   }

//   void _onPageChanged(int index) {
//     setState(() {
//       _currentPage = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     const bool isWeb = kIsWeb;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xff28293F),
//         body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           child: Column(
//             children: [
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: _pages.length,
//                   onPageChanged: _onPageChanged,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(),
//                           child: Image.asset(
//                             _pages[index]['image']!,
//                             height: 320,
//                           ),
//                         ),
//                         const SizedBox(height: 40),
//                         if (index == 1) ...[
//                           Image.asset(
//                             _pages[index]
//                                 ['title']!, // Use the image path for the title
//                             width: 200, // Adjust the width as needed
//                             height: 100, // Adjust the height as needed
//                           ),
//                         ] else ...[
//                           Center(
//                             child: Text(
//                               _pages[index]['title']!,
//                               style: GoogleFonts.roboto(
//                                 textStyle: const TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 30,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10),
//                           child: Text(
//                             _pages[index]['body']!,
//                             style: GoogleFonts.roboto(
//                               textStyle: const TextStyle(
//                                 fontSize: 20,
//                                 color: Color(0xffAFAFAF),
//                               ),
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 40),
//                           child: SmoothPageIndicator(
//                             controller: _pageController,
//                             count: _pages.length,
//                             effect: const ExpandingDotsEffect(
//                               dotWidth: 10,
//                               dotHeight: 10,
//                               dotColor: Colors.grey,
//                               activeDotColor: Color(0xffFFC400),
//                               expansionFactor: 4,
//                               spacing: 8,
//                             ),
//                           ),
//                         ),
//                         if (index == 1) ...[
//                           const SizedBox(height: 10),
//                           CustomButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => LoginScreen()),
//                               );
//                             },
//                             text: 'Get Started',
//                           ),
//                         ],
//                       ],
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     if (_currentPage == 0)
//                       TextButton(
//                         onPressed: () {
//                           // Logic to execute when "Skip" is pressed
//                         },
//                         child: const Text(
//                           'Skip',
//                           style: TextStyle(
//                             fontSize: 24,
//                             color: const Color(0xffAFAFAF),
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                       ),
//                     if (_currentPage < _pages.length - 1)
//                       Padding(
//                         padding: const EdgeInsets.only(right: 10, bottom: 0),
//                         child: InkWell(
//                           onTap: _nextPage, // Call _nextPage method on tap
//                           child: Image.asset(
//                             'assets/next.png',
//                             height: 48,
//                             width: 48,
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
