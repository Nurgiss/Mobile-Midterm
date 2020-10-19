import 'package:flutter/material.dart';
import 'assets/CalcButton.dart';
// ignore: unused_import
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget{
  CalcApp({Key key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String expression = '';

  void numClick(String text){
    setState((){
      expression += text;
    });
  }
  void clear(String text){
    setState((){
      expression = '';
    });
  }
  void evaluate(String text){
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState((){
      expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF3b3d3c),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget> [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
              expression,
              style: TextStyle(
                fontSize: 70,
                color: Colors.white,
                fontFamily: 'NanumGothic',
               ),
            
              ),
              alignment: Alignment(1,1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text:'C',
                  fillColor: 0xFF4e5051,  
                  callback: clear,
                  
                ),
                 CalcButton(
                  text:String.fromCharCode(0x00B1),
                  fillColor: 0xFF4e5051,  callback: numClick,
                ),
                 CalcButton(
                  text:'%',
                  fillColor: 0xFF4e5051,  callback: numClick,
                ),
              
                 CalcButton(
                  text:String.fromCharCode(0x00F7),
                  fillColor: 0xFFff9f0c,
                  fontSize: 40,  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text:'7',
                  fillColor: 0xFF6c6d6d,
                  callback: numClick,
                ),
                 CalcButton(
                  text:'8',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
                 CalcButton(
                  text:'9',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
              
                 CalcButton(
                  text:String.fromCharCode(0x00D7),
                  fillColor: 0xFFff9e0a,
                   fontSize: 32,  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text:'4',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
                 CalcButton(
                  text:'5',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
                 CalcButton(
                  text:'6',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
              
                 CalcButton(
                  text:'-',
                  fontSize: 50,
                  fillColor: 0xFFff9e0a,  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text:'1',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
                 CalcButton(
                  text:'2',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                ),
                 CalcButton(
                  text:'3',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                   
                ),
              
                 CalcButton(
                  text:'+',
                  fillColor: 0xFFff9f07,  callback: numClick,
                  fontSize: 35,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              
                CalcZeroButton(
                  text:'0',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                  
                ),
                 CalcButton(
                  text:'.',
                  fillColor: 0xFF6c6d6d,  callback: numClick,
                  fontSize: 32,
                ),
                
              
                 CalcButton(
                  text:'=',
                  fillColor: 0xFFff9e0a,  callback: evaluate,
                ),
              ],
            ),
          ],
         
          
        ),
      ),
    );
  }
}
