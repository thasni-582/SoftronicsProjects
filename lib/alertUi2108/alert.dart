import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Exit App"),
            content: Text("Are you sure you want to exit?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("No"),
              ),
              TextButton(
                onPressed: () {
                  // Exit code here
                  Navigator.pop(context);
                },
                child: Text("Yes"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text('Open Alert Dailoge'),
            ),
          ),
          TextButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("This is a SnackBar!"),
              duration: Duration(seconds: 2),
            ),
          );
            
          }, child: Text('Click'))
        ],
      ),
    );
  }
}
