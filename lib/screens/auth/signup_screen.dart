import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passTextController;
  late TapGestureRecognizer _tapGestureRecognizer;
  bool _obscure = true;
  String? _emailErrorValue;
  String? _passErrorValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passTextController = TextEditingController();
    _tapGestureRecognizer=TapGestureRecognizer();
    _tapGestureRecognizer.onTap=creatnewActionAccount;

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }


  void creatnewActionAccount(){
    Navigator.pushNamed(context,  "/login_screen");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/3.png'),
            const SizedBox(height: 25,),
            TextField(
              controller: _emailTextController,
              style: GoogleFonts.nunito(),
              onTap: () {},
              onChanged: (String value) {},
              minLines: null,
              maxLines: null,
              expands: true,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              textInputAction: TextInputAction.search,
              onSubmitted: (String v) {},
              keyboardType: TextInputType.emailAddress,
              // textCapitalization: TextCapitalization.words,
              // maxLength: 25,
              // buildCounter:(
              // BuildContext context,{
              // required int currentLength,
              // required int? maxLength,
              // required bool isFocused,
              // }){
              //   return isFocused? Text('$currentLength-$maxLength'):null;
              // },
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: _emailErrorValue==null? 50:75,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                // contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                // for maxLength
                counterText: '',
                hintText: 'Email',
                hintStyle: GoogleFonts.nunito(),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: const Icon(Icons.email),
                // prefix: Icon(Icons.email),
                // prefixText: 'ucas-',
                // suffixIcon: IconButton(
                //     onPressed: () {}, icon: Icon(Icons.send)),
                // suffix: Icon(Icons.send),
                // suffixText: 'ucas.com',
                //------------------//
                // icon: Icon(Icons.email,color: Colors.green,),
                // no change color oooohhhh!!! has rehation with theem
                // iconColor: Colors.green,
                //------------------//
                // helperText: 'exampels@ucas.edu.ps',
                // helperStyle: GoogleFonts.nunito(),
                // helperMaxLines: 1,
                //------------------//
                errorText: _emailErrorValue,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
                //------------------//
                //  border: InputBorder.none,
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10),
                //   borderSide: BorderSide(
                //     color: Colors.pink,
                //   ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.pink.shade300,
                    width: 1,
                  ),

                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red.shade700,
                    )
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                    )
                ),

              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: TextField(

                    decoration:InputDecoration(
                        constraints:const BoxConstraints(
                          maxHeight: 47,
                        ),
                      hintText: "First Name",
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFFA5A5A5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    decoration:InputDecoration(
                        constraints:const BoxConstraints(
                          maxHeight: 47,
                        ),
                        hintText: "Last Name",
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFFA5A5A5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: _passTextController,
              minLines: 1,
              maxLines: 1,
              expands: false,


              style: GoogleFonts.nunito(),
              obscureText: _obscure,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(onPressed: () {
                  setState(() => _obscure = !_obscure);
                },
                  icon: Icon(_obscure ? Icons.remove_red_eye  :  Icons.visibility_off ),),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                constraints: BoxConstraints(
                  maxHeight:_passErrorValue==null? 50: 75,
                ),
                hintText: 'Password',
                hintMaxLines: 1,
                hintStyle: GoogleFonts.nunito(),

                errorText: _passErrorValue,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.grey
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                    )
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red.shade700,
                    )
                ),
              ),

            ),
            const SizedBox(height: 10,),
            TextField(
              controller: _passTextController,
              minLines: 1,
              maxLines: 1,
              expands: false,


              style: GoogleFonts.nunito(),
              obscureText: _obscure,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(onPressed: () {
                  setState(() => _obscure = !_obscure);
                },
                  icon: Icon(_obscure ? Icons.remove_red_eye  :  Icons.visibility_off ),),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                constraints: BoxConstraints(
                  maxHeight:_passErrorValue==null? 50: 75,
                ),
                hintText: 'Confirm Password',
                hintMaxLines: 1,
                hintStyle: GoogleFonts.nunito(),

                errorText: _passErrorValue,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Colors.grey
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                    )
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red.shade700,
                    )
                ),
              ),

            ),
            const SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/Signup2_screen");
              // performLogin();
              // Navigator.pushReplacementNamed(context, "/login_screen");
            },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF2B3B48),
                    minimumSize: const Size(400, 50)
                ),
                child: Text('Next',style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 24
                ),)),
            const SizedBox(height: 5,),
            Center(
              child: RichText(text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      recognizer:_tapGestureRecognizer ,
                      text: 'Log in',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: const Color(0xFF004CFF),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ]

              )),
            )
          ],
        ),
      ),
    );
  }
}
