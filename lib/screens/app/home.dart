import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_scope/screens/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B3B48),
        title: Text(
          "Home",
          style: GoogleFonts.roboto(color: Colors.white),
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back!",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Text(
                      "Hope you feeling good today",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    color: const Color(0xff2B3B48),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.tips_and_updates,
                            color: Colors.white,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            'See some tips to know how to use the app',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Ads",
                  style: GoogleFonts.roboto(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/Mask Group 2.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Card(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.5, color: Color(0xff18242D)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox.shrink(),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Get 50% Off',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'In Your First Visit',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.place,
                                      color: Color(0xff18242D),
                                    ),
                                    Text(
                                      '1612 Stockton St, San Francisco',
                                      style: GoogleFonts.roboto(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      backgroundColor: const Color(0xff18242D)),
                                  child: Text(
                                    'Get an appointment',
                                    style: GoogleFonts.roboto(
                                      fontSize: 10,
                                    ),
                                  ),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Nearby Doctors",
                  style: GoogleFonts.roboto(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffF16D6D), width: 1.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            child: Image.asset(
                              'images/Rectangle 104.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr.Ali Ju',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Skin Care Clinic',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Color(0xff18242D),
                                  ),
                                  Text(
                                    '800 M',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    backgroundColor: const Color(0xff18242D)),
                                child: Text(
                                  'Get an appointment',
                                  style: GoogleFonts.roboto(
                                    fontSize: 10,
                                  ),
                                ),
                                onPressed: () {
                                  print('Pressed');
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    aspectRatio: 2.8 / 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
