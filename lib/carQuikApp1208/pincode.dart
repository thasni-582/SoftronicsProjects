import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Pincode extends StatefulWidget {
  const Pincode({super.key});

  @override
  State<Pincode> createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  String pinValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Enter Your PIN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Text(
              'Enter your PIN to confirm payment',
              style: TextStyle(fontSize: 15,color: Color(0xff162542), ),
            ),
          ),
        ],
      ),
    );
  }
}
