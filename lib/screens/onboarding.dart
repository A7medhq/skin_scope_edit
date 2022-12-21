import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text("Early Detection Save lives",style:GoogleFonts.montserrat(
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 29.7,),
          Image.asset('images/2.png'),
          const SizedBox(height: 56.9,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, "/login_screen");
            },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF2B3B48),
                  minimumSize: const Size(double.infinity, 50)
                ),
                child: Text('Get started',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 24
                ),)),
          ),
          // const SizedBox(height: 50,),
        ],
      )
    );
  }
}
