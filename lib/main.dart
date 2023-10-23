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
  String result2 = '';
  String result3 = '';
  String result4 = '';

  void calculateSum() {
    setState(() {
      int num1 = int.tryParse(num1Controller.text) ?? 0;
      int num2 = int.tryParse(num2Controller.text) ?? 0;
      int num3 = int.tryParse(num3Controller.text) ?? 0;
      int num4 = int.tryParse(num4Controller.text) ?? 0;

      result = 'Sum : ${num1 + num2 + num3 + num4}';
     });
  }
  void calculateSumeven() {
    setState(() {
      int num1 = int.tryParse(num1Controller.text) ?? 0;
      int num2 = int.tryParse(num2Controller.text) ?? 0;
      int num3 = int.tryParse(num3Controller.text) ?? 0;
      int num4 = int.tryParse(num4Controller.text) ?? 0;

      List<int> evennum = [num1, num2, num3, num4];
      List<int> evenNumbers = [];
      int sumeven = 0;
      for (int numbers in evennum) {
      if (numbers %2 == 0) {
      evenNumbers.add(numbers);}}
      for (int numbers in evenNumbers) {
      sumeven += numbers;
      result2 = 'Sum : $sumeven';
      }
      });
  }
  void calculateSumOdd() {
    setState(() {
      int num1 = int.tryParse(num1Controller.text) ?? 0;
      int num2 = int.tryParse(num2Controller.text) ?? 0;
      int num3 = int.tryParse(num3Controller.text) ?? 0;
      int num4 = int.tryParse(num4Controller.text) ?? 0;

      List<int> evennum = [num1, num2, num3, num4];
      List<int> oddNumbers = [];
      int sumodd = 0;
      for (int numbers in evennum) {
      if (numbers %2 != 0) {
      oddNumbers.add(numbers);}}
      for (int numbers in oddNumbers) {
      sumodd += numbers;
      result3 = 'Sum : $sumodd';
      }
      });
  }
  void calculateSumdivi3() {
    setState(() {
      int num1 = int.tryParse(num1Controller.text) ?? 0;
      int num2 = int.tryParse(num2Controller.text) ?? 0;
      int num3 = int.tryParse(num3Controller.text) ?? 0;
      int num4 = int.tryParse(num4Controller.text) ?? 0;

      List<int> evennum = [num1, num2, num3, num4];
      List<int> divi3Numbers = [];
      int sumdivi3 = 0;
      for (int numbers in evennum) {
      if (numbers %3 == 0) {
      divi3Numbers.add(numbers);}}
      for (int numbers in divi3Numbers) {
      sumdivi3 += numbers;
      result4 = 'Sum : $sumdivi3';
      }
      });
  }
  void clearresult() {
    setState(() {
      int num1 = int.tryParse(num1Controller.text) ?? 0;
      int num2 = int.tryParse(num2Controller.text) ?? 0;
      int num3 = int.tryParse(num3Controller.text) ?? 0;
      int num4 = int.tryParse(num4Controller.text) ?? 0;
      
      result = '';
      result2 = '';
      result3 = '';
      result4 = '';
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
        child: Center(
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
              ElevatedButton(
                onPressed: calculateSumeven,
                child: Text('Sum Even'),
              ),
              Text(
                result2,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: calculateSumOdd,
                child: Text('Sum Odd'),
              ),
              Text(
                result3,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: calculateSumdivi3,
                child: Text('Sum Divisible by 3'),
              ),
              Text(
                result4,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: clearresult,
                child: Text('Clear Result'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}