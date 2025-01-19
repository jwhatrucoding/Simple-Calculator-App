
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';




class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorExtend();
}

class _CalculatorExtend extends State<Calculator> {
  // variables
  String _userInput = "";
  final String _result = "0";

  // methods
  void _addToInput(String value) {
    setState(() {
      _userInput += value;
    });
  }

  void _reset() {
    setState(() {
      _userInput = "";
    });
  }

   void _deleteLast() {
    setState(() {
      if (_userInput.isNotEmpty) {
        _userInput = _userInput.substring(0, _userInput.length - 1);
      }
    });
  }
   void _equals() {
    setState(() {
      // TODO: Calculate user input
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Let's get it"),
            Text(
              _userInput,
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _addToInput("+"), child: Text("+")),
                ElevatedButton(
                    onPressed: () => _addToInput("-"), child: Text("-")),
                ElevatedButton(
                    onPressed: () => _addToInput("/"), child: Text("/")),
                ElevatedButton(
                    onPressed: () => _addToInput("x"), child: Text("x")),
                ElevatedButton(
                    onPressed: () => _deleteLast(), child: Text("DEL")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _addToInput("1"), child: Text("1")),
                ElevatedButton(
                    onPressed: () => _addToInput("2"), child: Text("2")),
                ElevatedButton(
                    onPressed: () => _addToInput("3"), child: Text("3")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _addToInput("4"), child: Text("4")),
                ElevatedButton(
                    onPressed: () => _addToInput("5"), child: Text("5")),
                ElevatedButton(
                    onPressed: () => _addToInput("6"), child: Text("6")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _addToInput("7"), child: Text("7")),
                ElevatedButton(
                    onPressed: () => _addToInput("8"), child: Text("8")),
                ElevatedButton(
                    onPressed: () => _addToInput("9"), child: Text("9")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _addToInput("0"), child: Text("0")),
                ElevatedButton(
                  onPressed: () => _equals(), child: Text("=")),
                ElevatedButton(onPressed: _reset, child: Text("Reset")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}