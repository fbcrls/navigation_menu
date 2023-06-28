import 'package:flutter/material.dart';
import 'package:navigation/screen1.dart';
import 'package:navigation/screen2.dart';
import 'package:navigation/screen3.dart';
import 'package:navigation/screen4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter Navigation Menu'),
        ),
        body: MyBody(),
      ),
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
    return Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //button 1
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 150,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen1()),
                  );
                },
                child: Text(
                  'Button 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //button 2
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 150,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                },
                child: Text(
                  'Button 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //button 3
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 150,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen3()),
                  );
                },
                child: Text(
                  'Button 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //button 4
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 150,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen4()),
                  );
                },
                child: Text(
                  'Button 4',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
