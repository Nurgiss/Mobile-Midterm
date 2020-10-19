import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget{
  final String text;
  final int textColor;
  final int fillColor;
  final double fontSize;
  final Function callback;
  const CalcButton({
    Key key,
     this.text, 
     this.textColor=0xFFFFFFFFF, 
     this.fontSize = 30,
     this.fillColor,
     this.callback,
    }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(1),
      child: SizedBox(
        width: 95,
        height: 75,
        child:FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Text(text, style: TextStyle(
            fontFamily: 'MyriadPro', fontSize: fontSize,
            
            ),
           ),
          onPressed: (){
              callback(text);
          },
          color: fillColor != null ? Color(fillColor): null , 
          textColor: Color(0xFFFFFFFFF),
        ),
        
      ),
    );
    
  }
  
}

class CalcZeroButton extends StatelessWidget{
  final String text;
  final int textColor;
  final int fillColor;
  final double fontSize;
   final Function callback;
  const CalcZeroButton({
    Key key,
     this.text, 
     this.textColor=0xFFFFFFFFF, 
     this.fontSize = 35,
     this.fillColor, this.callback,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      child: SizedBox(
        width: 193,
        height: 75,
        child:FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          child: Text(text, style: TextStyle(
            fontFamily: 'NanumGothic', fontSize: fontSize,
            
            ),
           ),
          onPressed: (){
            callback(text);
          },
          color: fillColor != null ? Color(fillColor): null , 
          textColor: Color(0xFFFFFFFFF),
        ),
        
      ),
    );
  }
  
}