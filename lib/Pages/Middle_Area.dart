import 'package:bmi_calculator_ui/Utils/BoxShadow.dart';
import 'package:flutter/material.dart';

class MiddleContainer extends StatefulWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  State<MiddleContainer> createState() => _MiddleContainerState();
}

class _MiddleContainerState extends State<MiddleContainer> {
  //Variables
  double heightvalue = 170;
  bool switchvalue = false;

  void _inputheight(value) {
    setState(() {
      heightvalue = value;
    });
  }

  void _changeswitch(value) {
    setState(() {
      switchvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 8),
      height: 180,
      width: 393,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [shadow1, shadow2, shadow3]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 12),
                  height: 28,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'cm',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Switch(
                        value: switchvalue,
                        onChanged: _changeswitch,
                        inactiveThumbColor: Colors.deepPurple,
                        activeColor: Colors.deepPurple,
                      ),
                      const Text(
                        'ft',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Text(
            'Height',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  heightvalue.toInt().toString(),
                  style: const TextStyle(
                      fontSize: 55, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    '  Cm',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Slider(
              value: heightvalue,
              onChanged: _inputheight,
              min: 120,
              max: 220,
              activeColor: Colors.deepPurple,
              thumbColor: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
