import 'package:flutter/material.dart';
import 'package:skin_scope/screens/app/bottom_navigation_screen.dart';
import 'package:skin_scope/screens/app/cameraScreen.dart';
import 'package:skin_scope/screens/app/home.dart';
import 'package:skin_scope/screens/app/profileScreen.dart';
import 'package:skin_scope/screens/app/setting_screen.dart';
import 'package:skin_scope/screens/app/tips_screen.dart';
import 'package:skin_scope/screens/auth/login_screen.dart';
import 'package:skin_scope/screens/auth/signup2.dart';
import 'package:skin_scope/screens/auth/signup_screen.dart';
import 'package:skin_scope/screens/core/launch_screen.dart';
import 'package:skin_scope/screens/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/launch_screen",
      routes: {
        "/launch_screen": (context)=> const LaunchScreen(),
        "/onBoarding_screen": (context)=> const OnBoarding(),
        "/login_screen": (context)=> const LoginScreen(),
        "/Signup_screen": (context)=> const SignUpScreen(),
        "/Signup2_screen": (context)=> const SignUp2(),
        "/home_screen": (context)=> const HomeScreen(),
        "/camera_screen": (context)=> const CameraScreen(),
        "/profile_screen": (context)=> const ProfileScreen(),
        "/bon_screen": (context)=> const BonScreen(),
        "/tips_screen": (context)=> const TipsScreen(),
        "/setting_screen": (context)=> const SettingScreen(),
      },
    );
  }
}
