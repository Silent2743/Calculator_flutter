import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double number1;
  double number2;
  String opr;

  @override
  void initState() {
    number1 = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: hexToColor('283593'),
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height/2,
        //color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //Layout 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          number2 != null ? number2.toStringAsFixed(0) : '',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                  //Layout 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          number1 != null ? number1.toStringAsFixed(0) : '',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: hexToColor('90CAF9'),
                child: Column(
                  children: <Widget>[
                    Row(
                      //row 1
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('AC'),
                                onPressed: () {
                                  _action('AC');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Icon(Icons.keyboard_backspace),
                                onPressed: () {
                                  _action('backspace');
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      //row 2
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('1'),
                                onPressed: () {
                                  _action('1');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('2'),
                                onPressed: () {
                                  _action('2');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('3'),
                                onPressed: () {
                                  _action('3');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('/'),
                                onPressed: () {
                                  _action('/');
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      //row 3
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('4'),
                                onPressed: () {
                                  _action('4');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('5'),
                                onPressed: () {
                                  _action('5');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('6'),
                                onPressed: () {
                                  _action('6');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('*'),
                                onPressed: () {
                                  _action('*');
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      //row 4
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('7'),
                                onPressed: () {
                                  _action('7');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('8'),
                                onPressed: () {
                                  _action('8');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('9'),
                                onPressed: () {
                                  _action('9');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('-'),
                                onPressed: () {
                                  _action('-');
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      //row 5
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('0'),
                                onPressed: () {
                                  _action('0');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('='),
                                onPressed: () {
                                  _action('=');
                                },
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RaisedButton(
                                color: Colors.white,
                                child: Text('+'),
                                onPressed: () {
                                  _action('+');
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _action(String parameter) {
    switch (parameter) {
      case 'AC':
        {
          setState(() {
            number1 = 0;
            number2 = 0;
            opr = null;
          });
        }
        break;

      case 'backspace':
        {
          setState(() {
            var length = number1.toStringAsFixed(0).length;
            if (length == 1) {
              number1 = 0;
            } else {
              number1 = double.parse(
                  number1.toStringAsFixed(0).substring(0, (length - 1)));
            }
          });
        }
        break;

      case '+':
        {
          setState(() {
            if (number2 == null) {
              number2 = number1;
              number1 = 0;
            }
            if (opr != null) {
              var result = _math(opr);
              number2 = result;
              number1 = 0;
            }
            opr = '+';
          });
        }
        break;

      case '=':
        {
          setState(() {
            if (number2 == null) {
              number2 = number1;
              number1 = 0;
            }
            if (opr != null) {
              var result = _math(opr);
              number2 = null;
              number1 = result;
            }
            opr = '=';
          });
        }
        break;

      case '-':
        {
          setState(() {
            if (number2 == null) {
              number2 = number1;
              number1 = 0;
            }
            if (opr != null) {
              var result = _math(opr);
              number2 = null;
              number1 = result;
            }
            opr = '-';
          });
        }
        break;

      case '*':
        {
          setState(() {
            if (number2 == null) {
              number2 = number1;
              number1 = 0;
            }
            if (opr != null) {
              var result = _math(opr);
              number2 = null;
              number1 = result;
            }
            opr = '*';
          });
        }
        break;

      case '/':
        {
          setState(() {
            if (number2 == null) {
              number2 = number1;
              number1 = 0;
            }
            if (opr != null) {
              var result = _math(opr);
              number2 = null;
              number1 = result;
            }
            opr = '/';
          });
        }
        break;

      default:
        {
          setState(() {
            if (number1 != 0) {
              number1 = double.parse(number1.toStringAsFixed(0) + parameter);
            } else {
              number1 = double.parse(parameter);
            }
          });
        }
    }
  }

  _math(String opr) {
    switch (opr) {
      case '+':
        {
          return number2 + number1;
        }
        break;
      case '-':
        {
          return number2 - number1;
        }
      case '*':
        {
          return number2 * number1;
        }
        break;
      case '/':
        {
          return number2 / number1;
        }
        break;
      default:
    }
  }

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
