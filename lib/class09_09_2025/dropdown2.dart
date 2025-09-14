import 'package:flutter/material.dart';

class Dropdown2 extends StatefulWidget {
  const Dropdown2({super.key});

  @override
  State<Dropdown2> createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  List<String> course = ["Flutter", "Java", "Python", "Mern"];
  String? selectedItems;
  final List<String> options = ['RED', 'GREEN', 'BLUE', 'YELLOW'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        DropdownButton(value: selectedItems,
      items: options.map((String? newValue) {
        return DropdownMenuItem(value: newValue,
            child: Text(newValue!),);

      },).toList(),
        onChanged: (String? newValue){
          setState(() {
            selectedItems = newValue!;
          });
        }
        ),
          SizedBox(height: 20),
          Text('Selected: $selectedItems'),
          Container(
              height: 50,
              width: 50,
              color: selectedItems == 'RED'
                  ? Colors.red
                  : selectedItems == 'GREEN'
                  ? Colors.green
                  : selectedItems == 'BLUE'
                  ? Colors.blue
                  : Colors.yellow)
        ],
      ),
    );
  }
}
