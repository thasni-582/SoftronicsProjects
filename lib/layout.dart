import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text('#8D43B3', style: TextStyle(color: Colors.white,fontSize:20)),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 300,
                    width: 300, decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                    child: Center(
                      child: Text(
                        '#2AA650',
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity, decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: Center(
                          child: Text(
                            '#58AAE8',
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 200,width: double.infinity, decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: Center(
                          child: Text(
                            '#E74E33',
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 150,
              width: double.infinity, decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
              child: Center(
                child: Text('#2AA650', style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
