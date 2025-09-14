import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinInputPage extends StatefulWidget {
  const PinInputPage({super.key});

  @override
  State<PinInputPage> createState() => _PinInputPageState();
}

class _PinInputPageState extends State<PinInputPage> {
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pinput Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Pinput(
              controller: pinController,
              length: 6, // Number of digits
              showCursor: false,
              onCompleted: (pin) {
                debugPrint('Entered PIN: $pin');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint("Current Value: ${pinController.text}");
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}


