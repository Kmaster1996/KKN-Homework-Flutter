import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SumOfNumbersScreen(),
    );
  }
}

class SumOfNumbersScreen extends StatefulWidget {
  @override
  _SumOfNumbersScreenState createState() => _SumOfNumbersScreenState();
}

class _SumOfNumbersScreenState extends State<SumOfNumbersScreen> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();
  TextEditingController num4Controller = TextEditingController();
  String result = '';

  void calculateSum() {
    setState(() {
      int num1 = int.tryParse(num1Controller.text) ?? 0;
      int num2 = int.tryParse(num2Controller.text) ?? 0;
      int num3 = int.tryParse(num3Controller.text) ?? 0;
      int num4 = int.tryParse(num4Controller.text) ?? 0;

      result = 'Sum: ${num1 + num2 + num3 + num4}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum of Numbers App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            TextField(
              controller: num3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 3'),
            ),
            TextField(
              controller: num4Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 4'),
            ),
            ElevatedButton(
              onPressed: calculateSum,
              child: Text('Calculate Sum'),
            ),
            Text(
              result,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
