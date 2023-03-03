import 'package:ecommernce/enum/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> img = [
    'assets/img1.jpg',
    'assets/img2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#181C21"),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const SizedBox(
            //   height: 20,
            // ),
            const Center(
              child: Text(
                'DEROFIT-WORKOUT PLANNER',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            Column(
              children: [
                Center(
                  child: Text(
                    "VOLUME UP YOUR",
                    style: GoogleFonts.cairo(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: Text(
                    "BODY GOALS",
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                // BUILD IMAGE CAROUSEL
              ],
            ),
            _buildCarousel(),

            GestureDetector(
              onTap: ()=>Get.to(()=>const HomeScreen(),transition: Transition.leftToRight),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: HexColor('##D9FF11'),
                ),
                child:  Center(
                  child: Text(
                    'START BUILDING YOUR BODY',
                    style: GoogleFonts.cairo(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          options: CarouselOptions(height: 400.0,autoPlay: true),
          items: img.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            i,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ));
              },
            );
            
          }
          
          ).toList(),
          
        ));
  }
}
