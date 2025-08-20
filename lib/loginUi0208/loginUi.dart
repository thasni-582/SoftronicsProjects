import 'package:flutter/material.dart';

import 'loginUi2.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Text(
              'Login to continue',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "pleas enter username";
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Username',
                  fillColor: Colors.grey,
                  filled: true,
                  suffixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter password";
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Password',
                  fillColor: Colors.grey,
                  filled: true,
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text('forgot password ?')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print('clicked');
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[400],
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text('LOGIN', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NewAccount();
                    },
                  ),
                );
              },
              child: Text(
                'Create new account',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.amber,
                  decorationColor: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
