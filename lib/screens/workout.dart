import 'package:ecommernce/enum/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Workout extends StatefulWidget {
  const Workout({super.key});

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/rate.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildTime(),
            const SizedBox(
              height: 50,
            ),
            _buildPlay(),
            const SizedBox(
              height: 20,
            ),
            _buildSwipe(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwipe() {
    return Column(
      children: const [
        Icon(
          LineIcons.arrowUp,
          color: Colors.white,
        ),
        Text(
          "SWIPE TO SEE INSTRUCTION",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildPlay() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 80,
          decoration: BoxDecoration(
              color: HexColor("#272625"),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "TIME",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "20MIN",
                style: TextStyle(
                    color: HexColor(
                      "#595D61",
                    ),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: HexColor("##DAFF11"),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: IconButton(onPressed: () {}, icon: Icon(Icons.pause)),
            )),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 80,
          decoration: BoxDecoration(
              color: HexColor("#272625"),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "EQUIP",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "MUSCLES",
                style: TextStyle(
                    color: HexColor(
                      "#595D61",
                    ),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTime() {
    return const Text(
      "12:56",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 70
      ),
    );
  }
}
