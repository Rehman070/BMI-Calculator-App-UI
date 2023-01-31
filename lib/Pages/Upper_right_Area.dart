import 'package:bmi_calculator_ui/Pages/Upper_left_Area.dart';
import 'package:bmi_calculator_ui/Utils/BoxShadow.dart';
import 'package:flutter/material.dart';

class UpperrightContainer extends StatefulWidget {
  const UpperrightContainer({Key? key}) : super(key: key);

  @override
  State<UpperrightContainer> createState() => _UpperrightContainerState();
}

class _UpperrightContainerState extends State<UpperrightContainer> {
  int wieght = 18;

  void _increaseweight() {
    setState(() {
      wieght++;
    });
  }

  void _decreaseweight() {
    setState(() {
      wieght--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 170,
      width: 188,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [shadow1, shadow2, shadow3]),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            'Weight (In Kg)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            wieght.toString(),
            style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: _decreaseweight,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[50],
                  shape: const CircleBorder()),
              child: const Icon(
                Icons.remove,
                size: 28,
                color: Colors.deepPurple,
              ),
            ),
            ElevatedButton(
              onPressed: _increaseweight,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[50],
                  shape: const CircleBorder()),
              child: const Icon(
                Icons.add,
                size: 28,
                color: Colors.deepPurple,
              ),
            )
          ],
        )
      ]),
    );
  }
}
