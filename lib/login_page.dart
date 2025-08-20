import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: () {
      
    },child: Icon(Icons.add),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Name',
                  fillColor: Colors.pink[50],
                  filled: true,
                  suffixIcon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('Forgot Password')),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
