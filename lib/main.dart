import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: MyWidget(),
      theme: ThemeData(primaryColor: Colors.purple),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          MoneyBox("Total", 300, Colors.yellow, 120),
          SizedBox(
            height: 5,
          ),
          MoneyBox("Salary", 1000, Colors.orange, 100),
          SizedBox(
            height: 5,
          ),
          MoneyBox("Cost", 900, Colors.red, 100),
          SizedBox(
            height: 5,
          ),
          MoneyBox("Bill", 20, Colors.green, 100),
          SizedBox(
            height: 5,
          ),
          MoneyBox("Prime", 20, Colors.lightBlueAccent, 100),
        ]),
      ),
    );
  }

  void _showDialog(BuildContext context, String foodName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Food Selection"),
          content: Text("You are selected $foodName"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
