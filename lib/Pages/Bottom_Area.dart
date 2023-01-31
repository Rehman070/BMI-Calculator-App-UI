import 'package:bmi_calculator_ui/Utils/BoxShadow.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  bool switchvalue = false;

  void _changeswitch(value) {
    setState(() {
      switchvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 20),
      height: 145,
      width: 393,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [shadow1, shadow2, shadow3]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 14),
            child: Text(
              'Gender',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'I\'m',
                  style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Female',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: switchvalue,
                  onChanged: _changeswitch,
                  inactiveThumbColor: Colors.deepPurple,
                  activeColor: Colors.deepPurple,
                ),
                const Text(
                  'Male',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
