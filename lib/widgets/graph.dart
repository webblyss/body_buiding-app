import 'package:ecommernce/enum/hex_color.dart';
import 'package:flutter/material.dart';

class CustomGraph extends StatelessWidget {
  const CustomGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
          color: HexColor('#202428'), borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildHeader(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    _buildBars(MediaQuery.of(context).size.width * 0.2, HexColor('#353A41')),
                    Text(
                      'SUN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#595D61"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildBars(MediaQuery.of(context).size.width * 0.2, HexColor('#353A41')),
                    Text(
                      'MON',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#595D61"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildBars(MediaQuery.of(context).size.width * 0.2, HexColor('#353A41')),
                    Text(
                      'TUE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#595D61"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildBars(MediaQuery.of(context).size.width * 0.4,  HexColor('#DAFF11')),
                    Text(
                      'WED',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#595D61"),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildBars(MediaQuery.of(context).size.width * 0.2, HexColor('#353A41')),
                    Text(
                      'THU',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#595D61"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBars(double height,Color? color) {
    return Container(
      width: 30,
      height: height,
      decoration: BoxDecoration(
          color:color, borderRadius: BorderRadius.circular(5)),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "CALORIES",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "WEEKLY AVERAGE",
                style: TextStyle(
                    color: HexColor("#595D61"),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const Text(
                "120CAL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
