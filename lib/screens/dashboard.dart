import 'package:ecommernce/screens/workout.dart';
import 'package:flutter/material.dart';
import '../enum/hex_color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/card.dart';
import '../widgets/graph.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#181C21"),
      bottomNavigationBar: _buildBottomContainer(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(
                height: 15,
              ),
              _buildCards(),
              const SizedBox(
                height: 8,
              ),
              const CustomGraph(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "PERSONALIZE PLAN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "VIEW ALL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              _buildContainerWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/fresh.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  "WELCOME BACK",
                  style: GoogleFonts.cairo(
                    color: HexColor('#929497'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "MICHEAL BERNANDO",
                  style: GoogleFonts.cairo(
                      color: HexColor('#FAFAFA'),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:  [
         const CustomCard(
            icon: LineIcons.walking,
            text: "6,397",
            subtext: "STEPS",
          ),
         const CustomCard(
            icon: LineIcons.fire,
            text: "6,397",
            subtext: "CAL BURN",
          ),
          GestureDetector(
            onTap: ()=>Get.to(()=>const Workout()),
            child: const CustomCard(
              icon: LineIcons.heartbeat,
              text: "6,397",
              subtext: "HEARTBEAT",
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainerWidget() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 250,
      decoration: BoxDecoration(
          color: HexColor('#202428'),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
              image: AssetImage('assets/img2.jpg'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "CHEST",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            Text(
              "WORKOUT",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),

             SizedBox(
              height: 30,
             ),
             Text(
              "5-8MIN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomContainer(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: HexColor("##151518")
      ),
      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.dashboard,color: HexColor("##D8FF0A"),size: 25,)),
          IconButton(onPressed: (){}, icon: Icon(LineIcons.pieChart,color:HexColor("#888889"),size: 25,)),
          IconButton(onPressed: (){}, icon: Icon(LineIcons.book,color:HexColor("#888889"),size: 25,)),
          IconButton(onPressed: (){}, icon: Icon(LineIcons.cogs,color:HexColor("#888889"),size: 25,)),
        ],
      )),
    );
  }
}
