import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 150.0,
            height: 150.0,
            child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Icon(Icons.beenhere),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access, size: 60.0,)
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size+60,
      height: size+60,
      color: Color.fromRGBO(3, 55, 255, 1.0),
    );
  }
}