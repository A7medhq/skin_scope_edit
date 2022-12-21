
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/app_checked.dart';


class SignUp2 extends StatefulWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  late TextEditingController _date;
  late TextEditingController _country;
  DateTime date =DateTime.now();
  bool  _isDataOfBirth = false;
  String? _dateValue;
  String? _countryValue;
  String? _gender;
  String? _isCancerHestory;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _date=TextEditingController();
    _country=TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _date.dispose();
    _country.dispose();
    super.dispose();
  }
  final allChecked= AppChecked(title: "Creating an account means you’re okay with our Terms of Service, Privacy Policy, and our default Notification Settings.");
  final appCheckedList=[
    AppChecked(title: "Creating an account means you’re okay with our Terms of Service, Privacy,Policy, and our default Notification Settings."),
  ];
  // final List<AppChecked> _checked =<AppChecked>[
  //   AppChecked(title: 'Creating an account means you’re okay with our Terms of Service, Privacy Policy, and our default Notification Settings.'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           backgroundColor: const Color(0xFF2B3B48),
           title:Text("BACK",style:GoogleFonts.roboto(
             color: Colors.white
           ),),
         ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 60),
        physics: const NeverScrollableScrollPhysics(),
        children: [
              Image.asset('images/3.png'),
              const SizedBox(height: 15,),
              TextField(
                controller:_date,
                style: GoogleFonts.nunito(),
                onTap: () async {
                  DateTime? newDate= await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                  // if(newDate==null) return;
                  setState((){
                    if(newDate==null) return;
                    date=newDate;
                  });

                },
                onChanged: (String value) {},
                minLines: null,
                maxLines: null,
                expands: true,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                textInputAction: TextInputAction.search,
                onSubmitted: (String v) {},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    minHeight: 50,
                    maxHeight: _dateValue==null? 50:75,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  // contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  // for maxLength
                  counterText: '',
                  hintText:_isDataOfBirth? 'Date Of Birth ':"${date.day}/${date.month}/${date.year}",
                  hintStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w800
                      ,
                      fontSize: 16,
                      color: const Color(0xFFA5A5A5)
                  ),
                  hintMaxLines: 1,
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: const Icon(Icons.date_range),
                  errorText: _dateValue,
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
                    borderSide:const  BorderSide(
                      color: Colors.black45,
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
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Gender',style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                        title: const Text('Male'),
                        value: "M",
                        groupValue: _gender,
                        onChanged: (String? value){
                          setState((){
                            _gender=value;
                          });
                        }),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                        title: const Text('Female'),
                        value: "F",
                        groupValue: _gender,
                        onChanged: (String? value){
                          setState((){
                            _gender=value;
                          });
                        }),
                  ),
                ],
              ),
              TextField(
                controller:_country,
                style: GoogleFonts.nunito(),
                onTap: (){},
                onChanged: (String value) {},
                minLines: null,
                maxLines: null,
                expands: true,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                textInputAction: TextInputAction.search,
                onSubmitted: (String v){},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    minHeight: 50,
                    maxHeight: _countryValue==null? 50:75,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  // contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  // for maxLength
                  counterText: '',
                  hintText: 'Country',
                  hintStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xFFA5A5A5)
                  ),
                  hintMaxLines: 1,
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: const Icon(Icons.location_history),
                  errorText: _dateValue,
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
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Any Cancer History",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                        title: const Text('Yes'),
                        value: "y",
                        groupValue: _isCancerHestory,
                        onChanged: (String? value){
                          setState((){
                            _isCancerHestory=value;
                          });
                        }),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                        title: const Text('No'),
                        value: "n",
                        groupValue: _isCancerHestory,
                        onChanged: (String? value){
                          setState((){
                            _isCancerHestory=value;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              // for(AppChecked check in _checked)
              // CheckboxListTile(
              //   value:check.checked ,
              //   onChanged: (bool? value){
              //     if(value!=null){//null Safety (Flow Analysis)
              //       setState((){
              //         check.checked=value;
              //       });
              //     }},
              //     title: Text(check.title),
              //   ),
              // const Text("Creating an account means you’re okay with our Terms of Service, Privacy,Policy, and our default Notification Settings."),
              ListTile(
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap:0,
                leading: Checkbox(
                  value: allChecked.checked,
                  onChanged: (value){
                  setState((){
                    allChecked.checked=value!;
                     });
                  },
                ),
                title: Text(allChecked.title,style: GoogleFonts.montserrat(
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                Navigator.pushNamed(context, "/login_screen");},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF2B3B48),
                      // minimumSize: const Size(400, 50)
                  ),
                  child: Text('Sign Up',style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  ),)
              ),


            ],
          ),

    );
  }
}
