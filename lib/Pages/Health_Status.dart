import 'package:bmi_calculator_ui/Pages/CustomDrawer.dart';
import 'package:bmi_calculator_ui/Pages/HomePage.dart';
import 'package:bmi_calculator_ui/Utils/BoxShadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthStatus extends StatefulWidget {
  const HealthStatus({Key? key}) : super(key: key);

  @override
  State<HealthStatus> createState() => _HealthStatusState();
}

class _HealthStatusState extends State<HealthStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  CupertinoPageRoute(builder: (context) => CustomMenuDrawer()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        title: const Text('Your Health Status'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(23),
        child: Container(
          height: 800,
          width: 500,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [shadow1, shadow2, shadow3]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: '20',
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                TextSpan(
                    text: '.8',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ))
              ])),
              const SizedBox(
                height: 5,
              ),
              const Text('Your BMI index',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 100,
              ),
              Text('VERY SEVERLY UNDERWEIGHT',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red[100],
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                    'You have a lower than normal body weight. You should eat more!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  backgroundColor: Colors.deepPurple[200],
                  padding: const EdgeInsets.only(
                      left: 32.5, right: 32.5, top: 13.5, bottom: 13.5),
                ),
                child: const Text(
                  'BMI CHART',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => CustomMenuDrawer()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 15),
                ),
                child: const Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
