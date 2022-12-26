import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:skin_scope/screens/app/bottom_navigation_screen.dart';
import 'package:skin_scope/screens/app/cameraScreen.dart';
import 'package:skin_scope/screens/app/edit_profile.dart';
import 'package:skin_scope/screens/app/form.dart';
import 'package:skin_scope/screens/app/home.dart';
import 'package:skin_scope/screens/app/profileScreen.dart';
import 'package:skin_scope/screens/app/setting_screen.dart';
import 'package:skin_scope/screens/app/tips_screen.dart';
import 'package:skin_scope/screens/auth/login_screen.dart';
import 'package:skin_scope/screens/auth/signup2.dart';
import 'package:skin_scope/screens/auth/signup_screen.dart';
import 'package:skin_scope/screens/core/launch_screen.dart';
import 'package:skin_scope/screens/drawer.dart';
import 'package:skin_scope/screens/onboarding.dart';

import 'models/bn_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Onitialize Hive
  await Hive.initFlutter();

  // Open The Box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LaunchScreen(),
      routes: {
        "/launch_screen": (context) => const LaunchScreen(),
        "/onBoarding_screen": (context) => const OnBoarding(),
        "/login_screen": (context) => const LoginScreen(),
        "/Signup_screen": (context) => const SignUpScreen(),
        "/Signup2_screen": (context) => const SignUp2(),
        "/home_screen": (context) => const HomeScreen(),
        "/camera_screen": (context) => const CameraScreen(),
        "/profile_screen": (context) => const ProfileScreen(),
        "/bon_screen": (context) => const BonScreen(),
        "/tips_screen": (context) => const TipsScreen(),
        "/setting_screen": (context) => const SettingScreen(),
        "/main_home": (context) => MainHome(
              selectedPage: 0,
            ),
        "/form_screen": (context) => const FormScreen(),
        "/edit_profile_screen": (context) => const EditProfile(),
      },
    );
  }
}

class MainHome extends StatefulWidget {
  int selectedPage;

  MainHome({Key? key, required this.selectedPage}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedPageIndex = 0;
  final List<BnScreen> _screens = <BnScreen>[
    const BnScreen(title: 'Home', widget: HomeScreen()),
    const BnScreen(title: 'Camera', widget: CameraScreen()),
    const BnScreen(title: 'Profile', widget: ProfileScreen()),
  ];

  @override
  void initState() {
    _selectedPageIndex = widget.selectedPage;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: _screens[_selectedPageIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedPageIndex) {
          setState(() {
            _selectedPageIndex = selectedPageIndex;
          });
        },
        currentIndex: _selectedPageIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.pink.shade200,
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.blueAccent,
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            activeIcon: Icon(Icons.camera_enhance_outlined),
            icon: Icon(Icons.camera_alt_rounded),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.yellow,
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //   backgroundColor: Colors.green,
          //   activeIcon: Icon(Icons.settings),
          //   icon:Icon(Icons.settings_outlined),
          //   label: 'Settings',
          // ),
        ],
      ),
    );
  }
}
