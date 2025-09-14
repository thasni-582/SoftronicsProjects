import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: ListTile(
              leading: Image(
                image: AssetImage('assets/Wallet.jpeg'),
                height: 25,
              ),
              title: Text('My Wallet'),
              trailing: Radio(
                value: 1,
                groupValue: selectedValue,
                activeColor: Colors.deepPurple,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
            ),
          ),
          ListTile(
            leading: Image.asset('assets/Gpay.png', height: 25),
            title: Text('Googl Pay'),
            trailing: Radio(
              value: 2,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/Paypal.png'), height: 25),
            title: Text('Paypal'),
            trailing: Radio(
              value: 3,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ), ListTile(
            leading: Image(image: AssetImage('assets/Master Card.jpeg'), height: 25),
            title: Text('**** **** ****8775'),
            trailing: Radio(
              value: 3,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
