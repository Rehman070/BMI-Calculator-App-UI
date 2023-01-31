import 'package:bmi_calculator_ui/Pages/Bottom_Area.dart';
import 'package:bmi_calculator_ui/Pages/Health_Status.dart';
import 'package:bmi_calculator_ui/Pages/Upper_right_Area.dart';
import 'package:bmi_calculator_ui/Pages/Middle_Area.dart';
import 'package:bmi_calculator_ui/Pages/Upper_left_Area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [UpperContainer(), UpperrightContainer()],
            ),
          ),
          Row(
            children: const [MiddleContainer()],
          ),
          Row(
            children: const [BottomContainer()],
          ),
          const SizedBox(
            height: 170,
          ),
          ElevatedButton(
            onPressed: () {
               Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => const HealthStatus()));
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              backgroundColor: Colors.deepPurple,
              padding: const EdgeInsets.only(
                  left: 37, right: 37, top: 13, bottom: 13),
            ),
            child: const Text(
              'CALCULATE',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
