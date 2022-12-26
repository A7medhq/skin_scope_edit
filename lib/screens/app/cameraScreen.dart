import 'dart:convert';
import 'dart:io';

// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skin_scope/screens/drawer.dart';

import '../../main.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final _myBox = Hive.box('mybox');
  File? imageFile;
  // @override
  // void initState() {
  //   super.initState();
  //   _showDialog();
  // }
  //
  // _showDialog() async {
  //   await Future.delayed(Duration(milliseconds: 10));
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return new Container(child: new Text('foo'));
  //       });
  // }

  // void _getFromCamera() async{
  //   XFile? pickedFile= await ImagePicker().pickImage(
  //     source: ImageSource.camera,
  //     maxHeight:1080,
  //     maxWidth:1080,
  //   );
  //   setState((){
  //     imageFile = File(pickedFile!.path);
  //   });
  //   // Navigator.pop(context);
  // }
  // String? _yn;
  // String? _yn1;
  // String? _yn2;
  // String? _yn3;

  @override
  void initState() {
    // String? _yn;
    // String? _yn1;
    // String? _yn2;
    // String? _yn3;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)!.settings.arguments;

      if (args == null) {
        showDialog(
            context: context,
            builder: (_) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: FormAlert(),

                  // AlertDialog(
                  //   insetPadding:
                  //   const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  //   content: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       const SizedBox(height: 30,),
                  //       Text("This section to collect your  symptoms",style: GoogleFonts.roboto(
                  //           fontWeight: FontWeight.w500,
                  //           fontSize: 18,
                  //           color: Colors.black
                  //       ),textAlign:TextAlign.left,),
                  //       const SizedBox(height: 23,),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 25),
                  //         child: Align(
                  //           alignment: Alignment.centerLeft,
                  //           child: Text("Dose It Hurt ?",style: GoogleFonts.roboto(
                  //               fontWeight: FontWeight.w300,
                  //               fontSize: 16,
                  //               color: Colors.black
                  //           ),textAlign:TextAlign.left,),
                  //         ),
                  //       ),
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('Yes'),
                  //                 value: "Y",
                  //                 groupValue: _yn,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn=value;
                  //                   });
                  //                 }),
                  //           ),
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('No'),
                  //                 value: "N",
                  //                 groupValue: _yn,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn=value;
                  //                   });
                  //                 }),
                  //           ),
                  //         ],
                  //       ),
                  //       const SizedBox(height: 24,),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 25),
                  //         child: Align(
                  //           alignment: Alignment.centerLeft,
                  //           child: Text("Dose It Itch ?",style: GoogleFonts.roboto(
                  //               fontWeight: FontWeight.w300,
                  //               fontSize: 16,
                  //               color: Colors.black
                  //           ),textAlign:TextAlign.left,),
                  //         ),
                  //       ),
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('Yes'),
                  //                 value: "Y",
                  //                 groupValue: _yn1,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn1=value;
                  //                   });
                  //                 }),
                  //           ),
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('No'),
                  //                 value: "N",
                  //                 groupValue: _yn1,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn1=value;
                  //                   });
                  //                 }),
                  //           ),
                  //         ],
                  //       ),
                  //       const SizedBox(height: 24,),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 25),
                  //         child: Align(
                  //           alignment: Alignment.centerLeft,
                  //           child: Text("Dose It Grew ?",style: GoogleFonts.roboto(
                  //               fontWeight: FontWeight.w300,
                  //               fontSize: 16,
                  //               color: Colors.black
                  //           ),textAlign:TextAlign.left,),
                  //         ),
                  //       ),
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('Yes'),
                  //                 value: "Y",
                  //                 groupValue: _yn2,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn2=value;
                  //                   });
                  //                 }),
                  //           ),
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('No'),
                  //                 value: "N",
                  //                 groupValue: _yn2,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn2=value;
                  //                   });
                  //                 }),
                  //           ),
                  //         ],
                  //       ),
                  //       const SizedBox(height: 24,),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 25),
                  //         child: Align(
                  //           alignment: Alignment.centerLeft,
                  //           child: Text("Dose It Bleed ?",style: GoogleFonts.roboto(
                  //               fontWeight: FontWeight.w300,
                  //               fontSize: 16,
                  //               color: Colors.black
                  //           ),textAlign:TextAlign.left,),
                  //         ),
                  //       ),
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('Yes'),
                  //                 value: "Y",
                  //                 groupValue: _yn3,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn3=value;
                  //                   });
                  //                 }),
                  //           ),
                  //           Expanded(
                  //             child: RadioListTile<String>(
                  //                 title: const Text('No'),
                  //                 value: "N",
                  //                 groupValue: _yn3,
                  //                 onChanged: (String? value){
                  //                   setState((){
                  //                     _yn3=value;
                  //                   });
                  //                 }),
                  //           ),
                  //         ],
                  //       ),
                  //       const SizedBox(height: 32,),
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: ElevatedButton(onPressed: (){
                  //               // performLogin();
                  //               // Navigator.pop(context);
                  //               Navigator.pushNamed(context, "/home_screen");
                  //
                  //               // Navigator.pushNamed(context, "/home_screen");
                  //               // Navigator.pushNamed(context, "/home_screen");
                  //             },
                  //                 style: ElevatedButton.styleFrom(
                  //                   // primary: const Color(0xFF2B3B48),
                  //                     primary: Colors.white,
                  //                     minimumSize: const Size(300, 50)
                  //                 ),
                  //                 child: Text('Cancel',style: GoogleFonts.roboto(
                  //                     fontWeight: FontWeight.w400,
                  //                     fontSize: 20,
                  //                     color: Color(0xFF2B3B48)
                  //                 ),)),
                  //           ),
                  //           const SizedBox(width: 5,),
                  //           Expanded(
                  //             child: ElevatedButton(onPressed: (){
                  //               // performLogin();
                  //               Navigator.pushNamed(context, "/camera_screen");
                  //               // Navigator.pushNamed(context, "/home_screen");
                  //             },
                  //                 style: ElevatedButton.styleFrom(
                  //                     primary: const Color(0xFF2B3B48),
                  //                     minimumSize: const Size(400, 50)
                  //                 ),
                  //                 child: Text('Takes Photo',style: GoogleFonts.roboto(
                  //                     fontWeight: FontWeight.w400,
                  //                     fontSize: 20,
                  //                     color: Colors.white
                  //                 ),)),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  //   // actions: [
                  //   //   TextButton(
                  //   //       onPressed: () {
                  //   //         Navigator.of(context).pop();
                  //   //       },
                  //   //       child: const Text('تم'))
                  //   // ],
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(12.0)),
                  //   elevation: 5,
                  // ),
                ));
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B3B48),
        title: Text(
          "Camera",
          style: GoogleFonts.roboto(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 100),
        children: [
          const SizedBox(
            height: 50,
          ),
          imageFile != null
              ? Container(
                  child: Image.file(imageFile!),
                )
              : Container(
                  child: Icon(
                    Icons.camera_enhance_outlined,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.width * .6,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                getImage(source: ImageSource.camera);
              },
              child: Text("Capture Image with camera"),
              style: ElevatedButton.styleFrom(primary: Colors.black),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: () {
                getImage(source: ImageSource.gallery);
              },
              child: const Text("Select Image"),
              style: ElevatedButton.styleFrom(primary: Colors.black),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
        _myBox.put('image', base64Encode(imageFile!.readAsBytesSync()));
      });
    }
  }

  //
  // void _showFormDialog()  {
  //   return
  //     showDialog (
  //     context: context,
  //     // barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         elevation: 10,
  //         insetPadding:
  //         const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
  //         content: SingleChildScrollView(
  //           child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 const Image(image: AssetImage("images/5.png")),
  //                 const SizedBox(
  //                   height: 15,
  //                 ),
  //                 Text(
  //                   "Skin Scope",
  //                   // style: GoogleFonts.roboto(
  //                   //   fontSize: 32,
  //                   //   color: const Color(0xFF2170A6),
  //                   // ),
  //                 ),
  //                 const SizedBox(
  //                   height: 27,
  //                 ),
  //                 Row(
  //                   children: [
  //                     const Image(image: AssetImage("images/6.png")),
  //                     const SizedBox(
  //                       width: 5,
  //                     ),
  //                     Text(
  //                       "Don't forget that skin scope is not a",
  //                       // style: GoogleFonts.montserrat(
  //                       //   color: const Color(0xFF2B3B48),
  //                       //   fontSize: 12,
  //                       //   fontWeight: FontWeight.w300,
  //                       // ),
  //                     ),
  //                   ],
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.symmetric(horizontal: 13),
  //                   child: Align(
  //                     alignment: Alignment.centerLeft,
  //                     child: Text(
  //                       "doctor replacement",
  //                       // style: GoogleFonts.montserrat(
  //                       //   color: const Color(0xFF2B3B48),
  //                       //   fontSize: 12,
  //                       //   fontWeight: FontWeight.w300,
  //                       // ),
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   children: [
  //                     const Image(image: AssetImage("images/6.png")),
  //                     const SizedBox(
  //                       width: 5,
  //                     ),
  //                     Text(
  //                       "The app help you diagnose your skin ",
  //                       // style: GoogleFonts.montserrat(
  //                       //   color: const Color(0xFF2B3B48),
  //                       //   fontSize: 12,
  //                       //   fontWeight: FontWeight.w300,
  //                       // ),
  //                     ),
  //                   ],
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.symmetric(horizontal: 13),
  //                   child: Align(
  //                     alignment: Alignment.centerLeft,
  //                     child: Text(
  //                       " but still need a doctor to get the right help.",
  //                       // style: GoogleFonts.montserrat(
  //                       //   color: const Color(0xFF2B3B48),
  //                       //   fontSize: 12,
  //                       //   fontWeight: FontWeight.w300,
  //                       // ),
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //                 Row(
  //                   children: [
  //                     const Image(image: AssetImage("images/6.png")),
  //                     const SizedBox(
  //                       width: 5,
  //                     ),
  //                     Text(
  //                       "Always remember early diction save life .",
  //                       // style: GoogleFonts.montserrat(
  //                       //   color: const Color(0xFF2B3B48),
  //                       //   fontSize: 12,
  //                       //   fontWeight: FontWeight.w300,
  //                       // ),
  //                     ),
  //                   ],
  //                 ),
  //                 const SizedBox(
  //                   height: 10,
  //                 ),
  //               ]),
  //         ),
  //         actions: <Widget>[
  //           ElevatedButton(
  //             style: ElevatedButton.styleFrom(
  //                 primary: const Color(0xFF2B3B48),
  //                 minimumSize: const Size(double.infinity, 50)
  //             ),
  //             child: const Text('Start'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}

class FormAlert extends StatefulWidget {
  const FormAlert({Key? key}) : super(key: key);

  @override
  State<FormAlert> createState() => _FormAlertState();
}

class _FormAlertState extends State<FormAlert> {
  String? _yn;
  String? _yn1;
  String? _yn2;
  String? _yn3;
  @override
  Widget build(BuildContext context) {
    return (AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "This section to collect your  symptoms",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dose It Hurt ?",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('Yes'),
                    value: "Y",
                    groupValue: _yn,
                    onChanged: (String? value) {
                      setState(() {
                        _yn = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('No'),
                    value: "N",
                    groupValue: _yn,
                    onChanged: (String? value) {
                      setState(() {
                        _yn = value;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dose It Itch ?",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('Yes'),
                    value: "Y",
                    groupValue: _yn1,
                    onChanged: (String? value) {
                      setState(() {
                        _yn1 = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('No'),
                    value: "N",
                    groupValue: _yn1,
                    onChanged: (String? value) {
                      setState(() {
                        _yn1 = value;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dose It Grew ?",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('Yes'),
                    value: "Y",
                    groupValue: _yn2,
                    onChanged: (String? value) {
                      setState(() {
                        _yn2 = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('No'),
                    value: "N",
                    groupValue: _yn2,
                    onChanged: (String? value) {
                      setState(() {
                        _yn2 = value;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dose It Bleed ?",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('Yes'),
                    value: "Y",
                    groupValue: _yn3,
                    onChanged: (String? value) {
                      setState(() {
                        _yn3 = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile<String>(
                    title: const Text('No'),
                    value: "N",
                    groupValue: _yn3,
                    onChanged: (String? value) {
                      setState(() {
                        _yn3 = value;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      // performLogin();
                      // Navigator.pop(context);
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return MainHome(selectedPage: 0);
                          },
                        ),
                      );

                      // Navigator.pushNamed(context, "/home_screen");
                      // Navigator.pushNamed(context, "/home_screen");
                    },
                    style: ElevatedButton.styleFrom(
                        // primary: const Color(0xFF2B3B48),
                        primary: Colors.white,
                        minimumSize: const Size(300, 50)),
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xFF2B3B48)),
                    )),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      // performLogin();

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          settings: const RouteSettings(arguments: true),
                          builder: (context) {
                            return MainHome(selectedPage: 1);
                          },
                        ),
                      );

                      // // Navigator.pushNamed(context, "/camera_screen",
                      //    );
                      // Navigator.pushNamed(context, "/home_screen");
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF2B3B48),
                        minimumSize: const Size(400, 50)),
                    child: Text(
                      'Takes Photo',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white),
                    )),
              ),
            ],
          ),
        ],
      ),
      // actions: [
      //   TextButton(
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //       child: const Text('تم'))
      // ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 5,
    ));
  }
}
