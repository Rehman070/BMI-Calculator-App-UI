import 'package:flutter/material.dart';

class AbouutApp extends StatefulWidget {
  const AbouutApp({Key? key}) : super(key: key);

  @override
  State<AbouutApp> createState() => _AbouutAppState();
}

class _AbouutAppState extends State<AbouutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'Assets/Images/pt.png',
            width: 280,
            height: 220,
          ),
        ),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: 'BMI.',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          TextSpan(
              text: 'Calculator',
              style: TextStyle(fontSize: 17, color: Colors.grey))
        ])),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Divider(
            color: Colors.black38,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 22, right: 22, top: 10, bottom: 10),
          child: RichText(
              text: const TextSpan(children: [
            TextSpan(
                text:
                    'Body Mass Index (BMI) is value derived from person\'s weight and height The result of BMI measurement can give an idea about weather a person has correct weight for their height.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                )),
          ])),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            backgroundColor: Colors.deepPurple,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          ),
          child: const Text(
            'Read More...',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Send us your Feedback on',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextButton(onPressed: () {}, child: const Text('info@gmail.com'))
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text('V 1.0.1',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        const Text('App is up-to-date', style: TextStyle(color: Colors.grey)),
      ],
    ));
  }
}
