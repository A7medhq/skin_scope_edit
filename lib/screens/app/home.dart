import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_scope/screens/app/profileScreen.dart';

import '../../models/bn_screen.dart';
import 'cameraScreen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen( {Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF2B3B48),
      //   title:Text("Home",style:GoogleFonts.roboto(
      //       color: Colors.white
      //   ),),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //       children:[
      //         const UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(
      //             color: Color(0xFF18242D)
      //           ),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundImage: AssetImage("images/4.png"),
      //           ),
      //           accountName: Text('Olivia Heldens'),
      //           accountEmail: Text('kuku@gmail.com'),
      //         ),
      //         // ListTile(
      //         //   onTap: (){
      //         //     Navigator.pop(context);
      //         //     Future.delayed(Duration(milliseconds: 500),() {
      //         //       Navigator.pushNamed(context, "/home_screen");
      //         //     },);
      //         //     // Navigator.pushNamed(context, "/faqs_screen");
      //         //   },
      //         //   leading: Icon(Icons.home_outlined),
      //         //   title: Text("Home"),
      //         //   // subtitle: Text('Fregunt Quationes'),
      //         //   // trailing: Icon(Icons.arrow_forward_ios,size: 18,),
      //         // ),
      //         ListTile(
      //           onTap: (){
      //             Navigator.pop(context);
      //             Future.delayed(const Duration(milliseconds: 500),() {
      //               Navigator.pushNamed(context, "/tips_screen");
      //             },);
      //             // Navigator.pushNamed(context, "/faqs_screen");
      //           },
      //           leading: const Icon(Icons.privacy_tip_sharp),
      //           title: const Text("Tips"),
      //           // subtitle: Text('Fregunt Quationes'),
      //           // trailing: Icon(Icons.arrow_forward_ios,size: 18,),
      //         ),
      //         ListTile(
      //           onTap: (){
      //             Navigator.pop(context);
      //             Future.delayed(const Duration(milliseconds: 500),() {
      //               Navigator.pushNamed(context, "/camera_screen");
      //             },);
      //
      //           },
      //           leading: const Icon(Icons.camera_alt_outlined),
      //           title: const Text("Camera"),
      //
      //         ),
      //         ListTile(
      //           onTap: (){
      //             Navigator.pop(context);
      //             Future.delayed(Duration(milliseconds: 500),() {
      //               Navigator.pushNamed(context, "/profile_screen");
      //             },);
      //
      //           },
      //           leading: Icon(Icons.person_pin),
      //           title: Text("Profile"),
      //
      //
      //         ),
      //         ListTile(
      //           onTap: (){
      //             Navigator.pop(context);
      //             Future.delayed(Duration(milliseconds: 500),() {
      //               Navigator.pushNamed(context, "/login_screen");
      //             },);
      //
      //           },
      //           leading: Icon(Icons.logout),
      //           title: Text("Log Out"),
      //
      //
      //         ),
      //       ]
      //   ),
      // ),
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          children: [
            Text("Welcome back!",style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 28
            ),)
          ],
        ),
      )
      ,
     
    );
  }
}
