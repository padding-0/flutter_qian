import 'package:flutter/material.dart';
 
class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('$currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: true,
        viewportFraction: 0.8
      ),
      children: <Widget>[
        Container(
          color: Colors.purple[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('ONE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.blue[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('TWO', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.pink[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('THREE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
      ],
    );
  }
}