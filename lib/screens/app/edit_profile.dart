import 'package:flutter/material.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late TextEditingController _date;
  late TextEditingController _country;

  String? _gender;
  String? _countryValue;

  DateTime date =DateTime.now();
  bool  _isDataOfBirth = false;
  String? _dateValue;
  String? _yn;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B3B48),
        titleSpacing: -10,
        title: const Text('Ran G. Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(

                    decoration:InputDecoration(
                        constraints:const BoxConstraints(
                          maxHeight: 47,
                        ),
                        hintText: "Ran",
                        // hintStyle: GoogleFonts.roboto(
                        //   fontSize: 15,
                        //   fontWeight: FontWeight.w300,
                        //   color: const Color(0xFFA5A5A5),
                        // ),
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
                        hintText: "  G",
                        // hintStyle: GoogleFonts.roboto(
                        //   fontSize: 15,
                        //   fontWeight: FontWeight.w300,
                        //   color: const Color(0xFFA5A5A5),
                        // ),
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
            SizedBox(height: 24,),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('Male'),
                      value: "m",
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
                      selected: true,
                      onChanged: (String? value){
                        setState((){
                          _gender=value;
                        });
                      }),
                ),
              ],
            ),
            SizedBox(height: 24,),
            TextField(
              controller:_date,
              // style: GoogleFonts.nunito(),
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
                // hintStyle: GoogleFonts.roboto(
                //     fontWeight: FontWeight.w800
                //     ,
                //     fontSize: 16,
                //     color: const Color(0xFFA5A5A5)
                // ),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: const Icon(Icons.date_range),
                errorText: _dateValue,
                // errorStyle: GoogleFonts.nunito(),
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
            SizedBox(height: 24,),
            TextField(
              controller:_country,
              // style: GoogleFonts.nunito(),
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
                hintText: 'Gaza',
                // hintStyle: GoogleFonts.roboto(
                //     fontWeight: FontWeight.w400,
                //     fontSize: 16,
                //     color: const Color(0xFFA5A5A5)
                // ),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: const Icon(Icons.location_history),
                errorText: _dateValue,
                // errorStyle: GoogleFonts.nunito(),
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
                    color: Colors.black,
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
            SizedBox(height: 24,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(' Any Cancer History',textAlign: TextAlign.left,)),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: const Text('Yes'),
                      selected: true,
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
            SizedBox(height: 24,),
            ElevatedButton(
                onPressed: () {
                  // performLogin();
                  // Navigator.pushNamed(context, "/home_screen");
                  // Navigator.pushNamed(context, "/home_screen");
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF2B3B48),
                    minimumSize: const Size(400, 50)),
                child: Text(
                  'Save',
                  // style: GoogleFonts.roboto(
                  //     fontWeight: FontWeight.w400, fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
