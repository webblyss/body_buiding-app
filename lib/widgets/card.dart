import 'package:ecommernce/enum/hex_color.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subtext;

  const CustomCard(
      {super.key,
      required this.icon,
      required this.text,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: HexColor('#202428'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: HexColor("#D9FF10"),
              size: 34,
            ),
            Text(text,
            style: const TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
            Text(subtext,style: TextStyle(color: HexColor("#595D61"),fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
