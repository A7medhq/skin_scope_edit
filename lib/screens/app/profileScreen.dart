import 'package:flutter/material.dart';
import 'package:skin_scope/screens/drawer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2B3B48),
          title: Text('Profile'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/setting_screen', arguments: true);
              },
            )
          ],
        ),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Color(0xFF18242D),
                      ))),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 36.0, bottom: 24),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/profile.png',
                      ),
                      radius: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: const Text(
                      'Ran G.',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.cake,
                              color: Color(0xffF16D6D),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '32 Years',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.place,
                              color: Color(0xffF16D6D),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Gaza',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.female,
                              color: Color(0xffF16D6D),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.24, horizontal: 8.0),
                      child: const Text(
                        'Patient History',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff1E76B8)),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'images/PAT_340_714_68.png',
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.tag,
                                        color: Color(0xff56758F),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('32155'),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Icon(
                                        Icons.calendar_today,
                                        color: Color(0xff56758F),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('31/07/2021'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Row(
                                    children: const [
                                      Text('Diagnosis: Melanoma'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Row(
                                    children: const [
                                      Text('Hurt: No'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Itch: Yes'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Row(
                                    children: const [
                                      Text('Grew: Yes'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Bleed: No'),
                                    ],
                                  ),
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      side: const BorderSide(
                                          color: Color(0xff56758F)),
                                      foregroundColor: const Color(0xff56758F)),
                                  child: Text('Update States'),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
