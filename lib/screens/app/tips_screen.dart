import 'package:flutter/material.dart';
import 'package:skin_scope/screens/drawer.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF18242D),
        title: const Text("Tips"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Hi Olivia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Here are some tips to help you using the app',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            createCard(text: '1- Make sure the area is clean.'),
            createCard(
                text:
                    '2- Check the lighting make sure to be perfect not to light or to dark.'),
            createCard(text: '3- Take a picture of the area from 15 cm away.'),
            createCard(
                text: '4- After getting the result, get a doctor appointment.'),
            Image.asset('images/7126889.png'),
          ],
        ),
      ),
    );
  }
}

Widget createCard({required String text}) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: const Color(0xffF5E9CE),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ));
}
