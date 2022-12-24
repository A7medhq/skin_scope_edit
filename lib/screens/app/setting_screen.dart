import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_scope/screens/drawer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passTextController;
  late TextEditingController _pass1TextController;
  bool _obscure = true;
  String? _emailErrorValue;
  String? _passErrorValue;
  String? _pass1ErrorValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passTextController = TextEditingController();
    _pass1TextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passTextController.dispose();
    _pass1TextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Setting"),
        leading: args != null
            ? IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
        backgroundColor: const Color(0xFF2B3B48),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(alignment: Alignment.centerLeft, child: Text("Email")),
            const SizedBox(
              height: 5,
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
            const Align(
                alignment: Alignment.centerLeft, child: Text("Old Password")),
            const SizedBox(
              height: 5,
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
              height: 10,
            ),
            const Align(
                alignment: Alignment.centerLeft, child: Text("New Password")),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: _pass1TextController,
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
                  maxHeight: _pass1ErrorValue == null ? 50 : 75,
                ),
                hintText: 'Password',
                hintMaxLines: 1,
                hintStyle: GoogleFonts.nunito(),
                errorText: _pass1ErrorValue,
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
                  'Save',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passTextController.text.isNotEmpty &&
        _pass1TextController.text.isNotEmpty) {
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
      _pass1ErrorValue =
          _pass1TextController.text.isEmpty ? "Enter password" : null;
    });
  }

  void login() {
    Navigator.pushNamed(context, "/bon_screen");
  }
}
