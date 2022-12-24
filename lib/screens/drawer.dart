import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color(0xFF18242D)),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("images/4.png"),
          ),
          accountName: Text('Olivia Heldens'),
          accountEmail: Text('kuku@gmail.com'),
        ),
        ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, "/main_home");
          },
          leading: Icon(Icons.home_outlined),
          title: Text("Home"),
          // subtitle: Text('Fregunt Quationes'),
          // trailing: Icon(Icons.arrow_forward_ios,size: 18,),
        ),
        ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, "/tips_screen");
          },
          leading: const Icon(Icons.privacy_tip_sharp),
          title: const Text("Tips"),
          // subtitle: Text('Fregunt Quationes'),
          // trailing: Icon(Icons.arrow_forward_ios,size: 18,),
        ),
        ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, "/setting_screen");
          },
          leading: const Icon(Icons.settings),
          title: const Text("Setting"),
        ),
        // ListTile(
        //   onTap: (){
        //     Navigator.pop(context);
        //     Future.delayed(Duration(milliseconds: 500),() {
        //       Navigator.pushNamed(context, "/camera_screen");
        //     },);
        //
        //   },
        //   leading: Icon(Icons.camera_alt_outlined),
        //   title: Text("Camera"),
        //
        // ),
        // ListTile(
        //   onTap: (){
        //     Navigator.pop(context);
        //     Future.delayed(Duration(milliseconds: 500),() {
        //       Navigator.pushNamed(context, "/profile_screen");
        //     },);
        //
        //   },
        //   leading: Icon(Icons.person_pin),
        //   title: Text("Profile"),
        //
        //
        // ),
        ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, "/login_screen");
          },
          leading: const Icon(Icons.logout),
          title: const Text("Log Out"),
        ),
      ]),
    );
  }
}
