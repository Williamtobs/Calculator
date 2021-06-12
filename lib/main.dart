import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(calculator());
}

class calculator extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<calculator> {
  var userInput = '';
  var answer = '';

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 0, top: 10),
                      padding: EdgeInsets.only(top: 7, right: 10),
                      child: Text(
                        userInput,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                        maxLines: 100,
                        textAlign: TextAlign.end,
                      ),
                      height: 80,
                      width: 320,
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 0, right: 0, bottom: 3),
                      padding: EdgeInsets.only(top: 7, right: 10),
                      child: Text(
                        answer,
                        maxLines: 100,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      ),
                      height: 80,
                      width: 320,
                    ),
                  ],
                ),
                Row(children: [
                  Container(
                    height: 50,
                    width: 80,
                    child: TextButton(
                      child: Text(
                        'C',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          userInput = '';
                          answer = '0';
                        });
                      },
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border(
                            bottom: BorderSide(color: Colors.pink),
                            left: BorderSide(
                              color: Colors.pink,
                            ))),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                        });
                      },
                      child: Text(
                        'DEL',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border(
                          bottom: BorderSide(color: Colors.pink),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          userInput += '%';
                        });
                      },
                      child: Text(
                        '%',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border(
                          bottom: BorderSide(color: Colors.pink),
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          userInput += '/';
                        });
                      },
                      child: Text(
                        '/',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border(
                            bottom: BorderSide(color: Colors.pink),
                            right: BorderSide(
                              color: Colors.pink,
                            ))),
                  ),
                ]),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '7';
                          });
                        },
                        child: Text(
                          '7',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              left: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '8';
                          });
                        },
                        child: Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '9';
                          });
                        },
                        child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += 'x';
                          });
                        },
                        child: Text(
                          'X',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              right: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '4';
                          });
                        },
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              left: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '5';
                          });
                        },
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '6';
                          });
                        },
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '-';
                          });
                        },
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              right: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '1';
                          });
                        },
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              left: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '2';
                          });
                        },
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '3';
                          });
                        },
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '+';
                          });
                        },
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              right: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '+/-',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              left: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '0';
                          });
                        },
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            userInput += '.';
                          });
                        },
                        child: Text(
                          '.',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        child: Text(
                          '=',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border(
                              bottom: BorderSide(color: Colors.black87),
                              right: BorderSide(
                                color: Colors.black87,
                              ))),
                    ),
                  ],
                ),
              ],
            )));
  }
}
