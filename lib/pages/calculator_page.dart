// ignore_for_file: prefer_const_constructors, unused_field, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  // Value entered by the user
  String enteredValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              enteredValue,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
              ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 16.0
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    // FIrst grid item - clear button
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle clear button press
                          setState(() {
                            enteredValue ='';
                          });
                        }, 
                        child: Text("C", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } else if (index == 1) {
                    // FIrst grid item - clear button
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle negativize button press
                          setState(() {
                            enteredValue = '-';
                          });
                        }, 
                        child: Text("+/-", style: TextStyle(fontSize: 30, color: Colors.white),),
                        ),
                      );
                  }
                   else if (index == 2) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle division by 100 button press
                          // It basically appends "%"
                          setState(() {
                            enteredValue += '%';
                          });
                        }, 
                        child: Text("%", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                   else if (index == 3) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[900],
                        ),
                        onPressed: () {
                          // Handle division button press
                          setState(() {
                            enteredValue += '/';
                          });
                        }, 
                        child: Text("/", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                   else if (index == 7) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[900],
                        ),
                        onPressed: () {
                          // Handle multiplication button press
                          setState(() {
                            enteredValue += '*';
                          });
                        }, 
                        child: Text("x", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                   else if (index == 11) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[900],
                        ),
                        onPressed: () {
                          // Handle Substraction button press
                          setState(() {
                            enteredValue += '-';
                          });
                        }, 
                        child: Text("-", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                   else if (index == 15) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[900],
                        ),
                        onPressed: () {
                          // Handle addition button press
                          setState(() {
                            enteredValue += '+';
                          });
                        }, 
                        child: Text("+", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                  else if (index == 19) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow[900],
                        ),
                        onPressed: () {
                          //Handle equals button press
                          // Handle equals button press
                          // Handle equals button press
                          try {
                            Parser p = Parser();
                            Expression exp = p.parse(enteredValue);
                            double result = exp.evaluate(EvaluationType.REAL, ContextModel());
                            setState(() {
                              enteredValue = result.toString();
                            });
                          } catch (e) {
                            setState(() {
                              enteredValue = 'Error';
                            });
                          }
                        }, 
                        child: Text('=', style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                   else if (index == 4) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 7 button press
                          setState(() {
                            enteredValue +='7';
                          });
                        }, 
                        child: Text("7", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                  else if (index == 5) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 8 button press
                          setState(() {
                            enteredValue +='8';
                          });
                        }, 
                        child: Text("8", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 6) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 9 button press
                          setState(() {
                            enteredValue +='9';
                          });
                        }, 
                        child: Text("9", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 8) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: ( ) {
                          // Handle Num 4 button press
                          setState(() {
                            enteredValue +='4';
                          });
                        }, 
                        child: Text("4", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 9) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 5 button press
                          setState(() {
                            enteredValue +='5';
                          });
                        }, 
                        child: Text("5", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 10) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 6 button press
                          setState(() {
                            enteredValue +='6';
                          });
                        }, 
                        child: Text("6", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 12) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 1 button press
                          setState(() {
                            enteredValue +='1';
                          });
                        }, 
                        child: Text("1", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 13) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 2 button press
                          setState(() {
                            enteredValue += '2';
                          });
                        }, 
                        child: Text("2", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 14) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle clear button press
                          setState(() {
                            enteredValue +='3';
                          });
                        }, 
                        child: Text("3", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } else if (index == 16) {
                    // FIrst grid item Num 0 button
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 0 button press
                          setState(() {
                            enteredValue +='0';
                          });
                        }, 
                        child: Text("0", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  } 
                  else if (index == 17) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Num 0 button press
                          setState(() {
                            enteredValue +='0';
                          });
                        }, 
                        child: Text("0", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                  else if (index == 18) {
                    return GridTile(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        onPressed: () {
                          // Handle Decimal button press
                          setState(() {
                            enteredValue +='.';
                          });
                        }, 
                        child: Text(".", style: TextStyle(fontSize: 35, color: Colors.white),),
                        ),
                      );
                  }
                  /*
                  else {
                    // Numbers 0-9
                    return GridTile(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle number button press
                          print('Number button pressed: $index');
                        }, 
                        child: Text('$index', style: TextStyle(fontSize: 35),),
                      ),
                    );
                  // ignore: dead_code
                  }
                  */
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper function to evaluate mathematical expressions
  num eval(String expression) {
    try {
      // Using 'dart:math' library for basic calculations
      return Function.apply(
        RegExp(r'[-+*/]').allMatches(expression).isEmpty
            ? int.parse
            : expression.contains(RegExp(r'[.eE]'))
                ? double.parse
                : int.parse,
        [expression],
      );
    } catch (e) {
      return double.nan;
    }
  }