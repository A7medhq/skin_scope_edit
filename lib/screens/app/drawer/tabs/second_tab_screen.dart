import 'package:flutter/material.dart';
class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: NeverScrollableScrollPhysics(),
        // physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), itemBuilder: (context,index){
      return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
    });
  }
}
