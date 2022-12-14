import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // fix height and width of each button
  static double height = 80;
  static int width = 80;

  // variables for the calculator
  String? value = "0"; // display the value
  String? history = ""; // display the history
  double? firstValue, secondValue; // first and second double values
  String? result; // stores the result
  String? operation; // operation to perform

  // custom button widget
  Widget customButton(String value,
      [Color color = Colors.white12, double dimension = 1]) {
    if (value == "") {
      // if we want to show a blank space between buttons
      return SizedBox(
        height: height,
        width: width * dimension,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
        ),
      );
    } else {
      // if we want to draw a button
      // In this sample code all are buttons
      return SizedBox(
        height: height,
        width: width * dimension,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child: Text(
              value,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            onPressed: () => clickedButtonOperation(value),
          ),
        ),
      );
    }
  }

  // function for calculator operations (/, *, -, +)
  void clickedButtonOperation(String buttonText) {
    if (buttonText == "C") {
      result = "0";
      value = "";
      history = "";
      firstValue = 0;
      secondValue = 0;
    } else if (buttonText == "/" ||
        buttonText == "*" ||
        buttonText == "-" ||
        buttonText == "+") {
      firstValue = double.parse(value!);
      result = "";
      operation = buttonText;
    } else if (buttonText == "=") {
      secondValue = double.parse(value!);

      if (operation == "/") {
        //division operation
        result = (firstValue! / secondValue!).toString();
      }
      if (operation == "*") {
        //multiplication operation
        result = (firstValue! * secondValue!).toString();
      }
      if (operation == "-") {
        //difference operation
        result = (firstValue! - secondValue!).toString();
      }
      if (operation == "+") {
        //addition operation
        result = (firstValue! + secondValue!).toString();
      }
      if (operation == "/" ||
          operation == "*" ||
          operation == "-" ||
          operation == "+") {
        history = (firstValue.toString() +
            operation.toString() +
            secondValue.toString());
      }
    } else {
      result = double.parse(value! + buttonText).toString();
    }
    setState(() {
      value = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // app bar of the application
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Calculator",
          style: TextStyle(fontSize: 35),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // row to display the history of calculation
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 300,
                child: Text(
                  history!,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.white38),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          // row to display the result
          Row(
            children: [
              SizedBox(
                height: 70,
                width: 300,
                child: Text(
                  value!,
                  style: const TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.normal,
                      color: Colors.white70),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),

          // rows to display numbers and operations of the calculator
          Row(
            children: <Widget>[
              customButton("7"),
              customButton("8"),
              customButton("9"),
              customButton("/", Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              customButton("4"),
              customButton("5"),
              customButton("6"),
              customButton("*", Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              customButton("1"),
              customButton("2"),
              customButton("3"),
              customButton("-", Colors.orange),
            ],
          ),
          Row(
            children: <Widget>[
              customButton("0", Colors.white12),
              customButton("C", Colors.grey),
              customButton("=", Colors.cyan),
              customButton("+", Colors.orange),
            ],
          )
        ],
      ),
    );
  }
}
