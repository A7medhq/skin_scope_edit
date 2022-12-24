import 'dart:io';

// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skin_scope/screens/drawer.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? imageFile;

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
      });
    }
  }
}
