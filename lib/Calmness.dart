import 'package:flutter/material.dart';

class Calmness_Meterpage extends StatefulWidget {
  const Calmness_Meterpage({Key? key}) : super(key: key);

  @override
  State<Calmness_Meterpage> createState() => _Calmness_MeterpageState();
}

class _Calmness_MeterpageState extends State<Calmness_Meterpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD6B617),
        centerTitle: true,
        title: Text(
          'Calmness Meter',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'Good evening S.',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'How are you feeling?',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 20),
              child: CircularProgressIndicator(
                value:,
                strokeWidth: 10,
                backgroundColor: Colors.amber,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
