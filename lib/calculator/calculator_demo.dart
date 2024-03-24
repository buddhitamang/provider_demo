import 'package:flutter/material.dart';

// void main() {
//   runApp(CalculatorDemo());
// }
//
// class CalculatorDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CalculatorHomePage(),
//     );
//   }
// }

class CalculatorHomePage extends StatefulWidget {
  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String _output = '';
  String _displayText = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operation = '';

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _output = '';
        _displayText = '';
        _num1 = 0;
        _num2 = 0;
        _operation = '';
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '*' ||
          buttonText == '/') {
        _num1 = double.parse(_output);
        _operation = buttonText;
        _displayText += buttonText;
        _output = '';
      } else if (buttonText == '=') {
        _num2 = double.parse(_output);
        if (_operation == '+') {
          _output = (_num1 + _num2).toString();
        }
        if (_operation == '-') {
          _output = (_num1 - _num2).toString();
        }
        if (_operation == '*') {
          _output = (_num1 * _num2).toString();
        }
        if (_operation == '/') {
          _output = (_num1 / _num2).toString();
        }
        _operation = '';
      } else {
        _output += buttonText;
        _displayText += buttonText;
      }
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          onPressed: () => _buttonPressed(buttonText),
          // color: Colors.grey[300],
          // padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Text(
                _displayText,
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        buildButton('7'),
                        buildButton('8'),
                        buildButton('9'),
                        buildButton('/'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        buildButton('4'),
                        buildButton('5'),
                        buildButton('6'),
                        buildButton('*'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        buildButton('1'),
                        buildButton('2'),
                        buildButton('3'),
                        buildButton('-'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        buildButton('C'),
                        buildButton('0'),
                        buildButton('='),
                        buildButton('+'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
