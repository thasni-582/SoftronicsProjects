import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        children: [
          Row(
            children: [
              SafeArea(
                child: IconButton(
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Summary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              height: 120,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/image2.png'),
                    width: 150,
                    height: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 15),
                        child: Text(
                          'Mercedes S-class',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '₹60,000 ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '/ day',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Text(
                    'Schedule',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff162542),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Text(
                    'Location ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff162542),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Text(
                    'Personation information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff162542),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 230,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Text(
                        'Price Details ',
                        style: TextStyle(
                          color: Color(0xff162542),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    ListTile(
                      leading: Text(
                        'Car rent charge',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff162542),
                        ),
                      ),
                      trailing: Text(
                        '₹58,000',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Fees & Taxes',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff162542),
                            ),
                          ),
                        ),
                        SizedBox(width: 180),
                        Text(
                          '₹20,000',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    ListTile(
                      leading: Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff162542),
                        ),
                      ),
                      trailing: Text(
                        '₹60,000',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Color(0xff162542),
                  ),
                  title: Text(
                    'My Wallet',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff162542),
                    ),
                  ),
                  trailing: Text(
                    'Change',
                    style: TextStyle(fontSize: 15, color: Color(0xff162542)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff162542),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text('Confirm Payment', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
