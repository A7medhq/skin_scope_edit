// import 'package:flutter/material.dart';
//
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("name"),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: TextField(
//               decoration:  InputDecoration(
//                 hintText: "Email",
//                 prefixIcon: Icon(Icons.email),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                      borderSide: BorderSide(
//                        color: Colors.blue
//                      )
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = creatnewActionAccount;
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void creatnewActionAccount() {
    Navigator.pushNamed(context, "/Signup_screen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/3.png'),
              const SizedBox(
                height: 32,
              ),
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
                    maxHeight: _emailErrorValue == null ? 50 : 75,
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
                  errorText: _emailErrorValue,
                  errorStyle: GoogleFonts.nunito(),
                  errorMaxLines: 1,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black45,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade700,
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passTextController,
                minLines: 1,
                maxLines: 1,
                expands: false,
                style: GoogleFonts.nunito(),
                obscureText: _obscure,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() => _obscure = !_obscure);
                    },
                    icon: Icon(
                        _obscure ? Icons.remove_red_eye : Icons.visibility_off),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  constraints: BoxConstraints(
                    maxHeight: _passErrorValue == null ? 50 : 75,
                  ),
                  hintText: 'Password',
                  hintMaxLines: 1,
                  hintStyle: GoogleFonts.nunito(),
                  errorText: _passErrorValue,
                  errorStyle: GoogleFonts.nunito(),
                  errorMaxLines: 1,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      )),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade700,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ))),
              ElevatedButton(
                  onPressed: () {
                    performLogin();
                    // Navigator.pushNamed(context, "/home_screen");
                    // Navigator.pushNamed(context, "/home_screen");
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF2B3B48),
                      minimumSize: const Size(400, 50)),
                  child: Text(
                    'Login',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400, fontSize: 24),
                  )),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF000000),
                        ),
                        children: [
                      TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: 'SIGN UP',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color(0xFF004CFF),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ])),
              )
            ]),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 10,
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
          content: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("images/5.png")),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Skin Scope",
                    style: GoogleFonts.roboto(
                      fontSize: 32,
                      color: const Color(0xFF2170A6),
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Row(
                    children: [
                      const Image(image: AssetImage("images/6.png")),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Don't forget that skin scope is not a",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF2B3B48),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "doctor replacement",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF2B3B48),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Image(image: AssetImage("images/6.png")),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "The app help you diagnose your skin ",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF2B3B48),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        " but still need a doctor to get the right help.",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF2B3B48),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Image(image: AssetImage("images/6.png")),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Always remember early diction save life .",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF2B3B48),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF2B3B48),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text('Start Using The App '),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void performLogin() {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passTextController.text.isNotEmpty) {
      _controlErrorValue();
      return true;
    }
    _controlErrorValue();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Error, Enter required data!!'),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 2),
      dismissDirection: DismissDirection.horizontal,
    ));
    return false;
  }

  void _controlErrorValue() {
    setState(() {
      _emailErrorValue =
          _emailTextController.text.isEmpty ? "Enter Email" : null;
      _passErrorValue =
          _passTextController.text.isEmpty ? "Enter password" : null;
    });
  }

  void login() {
    Navigator.pushNamed(context, "/bon_screen");
    _showMyDialog();
  }
}
