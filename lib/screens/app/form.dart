import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FormScreen extends StatefulWidget {

  const FormScreen( {Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String? _yn;
  String? _yn1;
  String? _yn2;
  String? _yn3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        backgroundColor: const Color(0xFF2B3B48),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios_new_outlined)),
        title:  Text('BACK',style: GoogleFonts.montserrat(
          color: Colors.white
        ),),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Text("This section to collect your  symptoms",style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black
            ),textAlign:TextAlign.left,),
            const SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Dose It Hurt ?",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black
                ),textAlign:TextAlign.left,),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('Yes'),
                      value: "Y",
                      groupValue: _yn,
                      onChanged: (String? value){
                        setState((){
                          _yn=value;
                        });
                      }),
                ),
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('No'),
                      value: "N",
                      groupValue: _yn,
                      onChanged: (String? value){
                        setState((){
                          _yn=value;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Dose It Itch ?",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black
                ),textAlign:TextAlign.left,),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('Yes'),
                      value: "Y",
                      groupValue: _yn1,
                      onChanged: (String? value){
                        setState((){
                          _yn1=value;
                        });
                      }),
                ),
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('No'),
                      value: "N",
                      groupValue: _yn1,
                      onChanged: (String? value){
                        setState((){
                          _yn1=value;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Dose It Grew ?",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black
                ),textAlign:TextAlign.left,),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('Yes'),
                      value: "Y",
                      groupValue: _yn2,
                      onChanged: (String? value){
                        setState((){
                          _yn2=value;
                        });
                      }),
                ),
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('No'),
                      value: "N",
                      groupValue: _yn2,
                      onChanged: (String? value){
                        setState((){
                          _yn2=value;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Dose It Bleed ?",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black
                ),textAlign:TextAlign.left,),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('Yes'),
                      value: "Y",
                      groupValue: _yn3,
                      onChanged: (String? value){
                        setState((){
                          _yn3=value;
                        });
                      }),
                ),
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('No'),
                      value: "N",
                      groupValue: _yn3,
                      onChanged: (String? value){
                        setState((){
                          _yn3=value;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(height: 32,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    // performLogin();
                    Navigator.pop(context);
                    // Navigator.pushNamed(context, "/home_screen");
                    // Navigator.pushNamed(context, "/home_screen");
                  },
                      style: ElevatedButton.styleFrom(
                          // primary: const Color(0xFF2B3B48),
                          primary: Colors.white,
                          minimumSize: const Size(300, 50)
                      ),
                      child: Text('Cancel',style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        color: Color(0xFF2B3B48)
                      ),)),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    // performLogin();
                    Navigator.pushNamed(context, "/camera_screen");
                    // Navigator.pushNamed(context, "/home_screen");
                  },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF2B3B48),
                          minimumSize: const Size(400, 50)
                      ),
                      child: Text('Takes Photo',style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        color: Colors.white
                      ),)),
                ),
              ],
            ),
          ],
        ),
      )
      ,

    );
  }
}
