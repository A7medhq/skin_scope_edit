// import 'package:flutter/material.dart';
// import 'package:skin_scope/screens/app/home.dart';
// // import 'package:ui_app/models/bn_screen.dart';
// // import 'package:ui_app/screens/app/categoris_screen.dart';
// // import 'package:ui_app/screens/app/home_screen.dart';
// // import 'package:ui_app/screens/app/users_screen.dart';
// // import 'package:ui_app/screens/settings_screen.dart';
//
// import '../../models/bn_screen.dart';
//  class BottomNavigationScreen extends StatefulWidget {
//    const BottomNavigationScreen({Key? key}) : super(key: key);
//
//    @override
//    State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
//  }
//
//  class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
//    int _selectedPageIndex=0;
//     final List<BnScreen> _screens= <BnScreen>[
//     const BnScreen(title: 'Home', widget: HomeScreen()),
//     // const BnScreen(title: 'Users', widget: UsersScreen()),
//     // const BnScreen(title: 'Categories', widget: CategoriesScreen()),
//     // const BnScreen(title: 'Settings', widget: SettingsScreen()),
//    ];
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(_screens[_selectedPageIndex].title),
//        ),
//        drawer:Drawer(
//          child: ListView(
//            children:[
//             const UserAccountsDrawerHeader(
//              currentAccountPicture: CircleAvatar(),
//              accountName: Text('Flutter'),
//              accountEmail: Text('doaa@gmail.com'),
//              // otherAccountsPictures: [
//              //   CircleAvatar(),
//              //   CircleAvatar(),
//              // ],
//              ),
//              ListTile(
//                onTap: (){
//                  Navigator.pop(context);
//                  Future.delayed(Duration(milliseconds: 500),() {
//                    // Navigator.pushNamed(context, "/faqs_screen");
//                    Navigator.pushNamed(context, "/frequent_questions_screen");
//                  },);
//                  // Navigator.pushNamed(context, "/faqs_screen");
//                },
//                leading: Icon(Icons.question_answer),
//                title: Text("FAQS"),
//                subtitle: Text('Fregunt Quationes'),
//                trailing: Icon(Icons.arrow_forward_ios,size: 18,),
//              ),
//              ListTile(
//                onTap: (){
//                  Navigator.pop(context);
//                  Future.delayed(Duration(milliseconds: 500),() {
//                    // Navigator.pushNamed(context, "/faqs_screen");
//                    // Navigator.pushNamed(context, "/favorite_screen");
//                    // Navigator.pushNamed(context, "/second_favorite_screen");
//                    Navigator.pushNamed(context, "/third_favorite_screen");
//                  },);
//                  // Navigator.pushNamed(context, "/faqs_screen");
//                },
//                leading: Icon(Icons.favorite),
//                title: Text("Favorites"),
//                subtitle: Text('Favorite item'),
//                trailing: Icon(Icons.arrow_forward_ios,size: 18,),
//              ),
//        ]
//      ),
//        ),
//
//        body:_screens[_selectedPageIndex].widget,
//        bottomNavigationBar: BottomNavigationBar(
//          onTap: (int selectedPageIndex){
//            setState((){
//              _selectedPageIndex=selectedPageIndex;
//            });
//          },
//          currentIndex:  _selectedPageIndex ,
//          showSelectedLabels: true,
//          showUnselectedLabels: true,
//          // type: BottomNavigationBarType.fixed,
//          type: BottomNavigationBarType.shifting,
//          // backgroundColor: Colors.pink.shade200,
//          items: const[
//            BottomNavigationBarItem(
//              backgroundColor: Colors.blueAccent,
//              activeIcon: Icon(Icons.home),
//              icon:Icon(Icons.home_outlined),
//              label: 'Home',
//            ),
//            BottomNavigationBarItem(
//              backgroundColor: Colors.red,
//              activeIcon: Icon(Icons.person),
//              icon:Icon(Icons.person_outlined),
//              label: 'Users',
//            ),
//            BottomNavigationBarItem(
//              backgroundColor: Colors.yellow,
//              activeIcon: Icon(Icons.category),
//              icon:Icon(Icons.category_outlined),
//              label: 'Categories',
//            ),
//            BottomNavigationBarItem(
//              backgroundColor: Colors.green,
//              activeIcon: Icon(Icons.settings),
//              icon:Icon(Icons.settings_outlined),
//              label: 'Settings',
//            ),
//          ],
//        ),
//      );
//    }
//  }
//
import 'package:flutter/material.dart';
import 'package:skin_scope/screens/app/home.dart';
import 'package:skin_scope/screens/app/profileScreen.dart';
import 'package:skin_scope/screens/drawer.dart';

import '../../models/bn_screen.dart';
import 'cameraScreen.dart';

class BonScreen extends StatefulWidget {
  const BonScreen({Key? key}) : super(key: key);

  @override
  State<BonScreen> createState() => _BonScreenState();
}

class _BonScreenState extends State<BonScreen> {
  int _selectedPageIndex = 0;
  final List<BnScreen> _screens = <BnScreen>[
    const BnScreen(title: 'Home', widget: HomeScreen()),
    const BnScreen(title: 'Camera', widget: CameraScreen()),
    const BnScreen(title: 'Profile', widget: ProfileScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
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

