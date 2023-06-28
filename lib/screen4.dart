import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 4'),
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Text(
              'This is screen 4.',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 150,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go Back',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
