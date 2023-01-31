import 'package:bmi_calculator_ui/Utils/BoxShadow.dart';
import 'package:flutter/material.dart';

class UpperContainer extends StatefulWidget {
  const UpperContainer({Key? key}) : super(key: key);

  @override
  State<UpperContainer> createState() => _UpperContainerState();
}

class _UpperContainerState extends State<UpperContainer> {
  int age = 18;

  void _increaseage() {
    setState(() {
      age++;
    });
  }

  void _decreaseage() {
    setState(() {
      age--;
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
            'Age (In Year)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            age.toString(),
            style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: _decreaseage,
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
              onPressed: _increaseage,
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
