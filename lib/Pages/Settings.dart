import 'package:bmi_calculator_ui/Utils/BoxShadow.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchvalue = false;

  void _changeswitch(value) {
    setState(() {
      switchvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Dark Mode',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Image.asset('Assets/Images/nightmode.png',
                          width: 60, height: 60, fit: BoxFit.cover),
                      Switch(
                        value: switchvalue,
                        onChanged: _changeswitch,
                        inactiveThumbColor: Colors.deepPurple,
                        activeColor: Colors.deepPurple,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
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
                  padding: EdgeInsets.only(top: 18),
                  child: Text(
                    'Unit of Measurement',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleSwitch(
                        initialLabelIndex: 1,
                        cornerRadius: 15,
                        minWidth: 100,
                        minHeight: 33,
                        labels: const ['Centimetre', 'Feet-Inch'],
                        fontSize: 15,
                        activeBgColor: const [Colors.deepPurple],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.deepPurple[100],
                        inactiveFgColor: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
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
                  padding: EdgeInsets.only(top: 18),
                  child: Text(
                    'Unit of Weight ',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleSwitch(
                        initialLabelIndex: 1,
                        cornerRadius: 15,
                        minWidth: 100,
                        minHeight: 33,
                        labels: const ['Kilogram', 'Pound'],
                        fontSize: 15,
                        activeBgColor: const [Colors.deepPurple],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.deepPurple[100],
                        inactiveFgColor: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
