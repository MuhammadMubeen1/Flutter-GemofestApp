import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamefestival/common/bottom_nav_bar.dart';
import 'package:gamefestival/screen/info_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set the default icon color to white
        iconTheme: IconThemeData(color: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      // AuthenticationWrapper(),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Check if the user is signed in
      future: checkUserLoggedIn(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If user is signed in, navigate to the home screen
          if (snapshot.data == true) {
            return BottomNavBar();
          } else {
            // If user is not signed in, navigate to the login screen
            return OnboardingScreen();
          }
        }
        // Show a loading spinner while checking the user's login status
        return CircularProgressIndicator();
      },
    );
  }

  // Function to check if the user is already logged in
  Future<bool> checkUserLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('userId');

    if (userId != null) {
      // User is already logged in
      return true;
    } else {
      // User is not logged in
      return false;
    }
  }
}
