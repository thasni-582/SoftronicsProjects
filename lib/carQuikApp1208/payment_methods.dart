import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String selectedMethod = 'wallet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 35),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Text(
                  'Payment Methods',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xff162542),
                  ),
                ),
              ),
              SizedBox(width: 100),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Select the payment method you want to use',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.account_balance_wallet,
                    color: Color(0xff162542),
                  ),
                ),
                Text(
                  'My Wallet',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                  ),
                ),
                SizedBox(width: 128),
                Text(
                  '₹ 80,000',
                  style: TextStyle(fontSize: 18, color: Color(0xff162542)),
                ),
                Radio(
                  value: 'wallet', // option name
                  groupValue: selectedMethod,
                  activeColor: Color(0xff162542), //  selected variable
                  onChanged: (value) {
                    setState(() {
                      selectedMethod = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/Paypal.png'),
                    height: 25,
                  ),
                ),
                Text(
                  'Paypal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                  ),
                ),
                SizedBox(width: 223),
                Radio(
                  value: 'paypal', //  option name
                  groupValue: selectedMethod, //  selected variable
                  onChanged: (value) {
                    setState(() {
                      selectedMethod = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/Gpay.png'),
                    height: 25,
                  ),
                ),
                Text(
                  'Google Pay',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                  ),
                ),

                SizedBox(width: 185),
                Radio(
                  value: 'googlePay', // 👈 option name
                  groupValue: selectedMethod, // 👈 selected variable
                  onChanged: (value) {
                    setState(() {
                      selectedMethod = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/Master Card.jpeg'),
                    height: 25,
                  ),
                ),
                Text(
                  '**** **** **** ****8775',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                  ),
                ),
                SizedBox(width: 75),
                Radio(
                  value: 'password', // option name
                  groupValue: selectedMethod, // selected variable
                  onChanged: (value) {
                    setState(() {
                      selectedMethod = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 380),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff162542),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text('Continue', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
