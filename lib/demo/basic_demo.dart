import 'dart:ui';

import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://pic1.win4000.com/wallpaper/4/548fe425978de.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5), 
            BlendMode.srcATop,
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 24, color: Colors.white,),
            padding: EdgeInsets.only(left: 14.0, right: 8.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                 color: Colors.red[100],
                  width: 8.0,
                  style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Color.fromRGBO(3, 54, 255, 1.0),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
              )
            ),
          ),
          Container(
            child: Icon(Icons.portable_wifi_off, size: 24, color: Colors.white,),
            padding: EdgeInsets.only(left: 14.0, right: 8.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 55, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent[100],
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   )
              // ),
              // borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 24.0),
                  color: Color.fromRGBO(3, 54, 55, 0.6),
                  blurRadius: 36.0,
                  spreadRadius: -9.0
                )
              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Colors.white,
                Color.fromRGBO(3, 54, 55, 1.0),
              ])
            ),
          ),
        ],
      ),
    );
    
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'nihao',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),
        children: [
          TextSpan(
            text: 'nihao',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          TextSpan(
            text: 'laksdfkhlkasdjfhlkajdshflkajskldfh'
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );

  final String _title = 'libai';
  @override
  Widget build(BuildContext context) {
    return Text(
      '$_title看着了解到风口浪尖卡时间段分开了开始减肥的会计师分开了开始减肥的会计师分开了开始减肥的会计师分开了开始减肥的会计师分开了开始减肥的会计师分开了开始减肥的会计师费开始交话费会计师考虑对方',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}