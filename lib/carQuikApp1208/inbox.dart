import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios, size: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Inbox',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 8,
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'search',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Thasni'),
                  subtitle: Text('you are welcome'),trailing: Column(
                    children: [
                      Text('3 min ago'),
                      CircleAvatar(radius:10,child: Text('2'),)
                    ],
                  
                  ),
                  leading: CircleAvatar(backgroundImage: AssetImage('images.jpeg')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
