import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('qianyunfeng', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('qianyunfeng@yit.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('http://pic1.win4000.com/wallpaper/4/548fe425978de.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  image: DecorationImage(
                    image: NetworkImage('http://pic1.win4000.com/wallpaper/4/548fe425978de.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.yellow[100].withOpacity(0.4), BlendMode.hardLight)
                  )
                ),
              ),
              ListTile(
                title: Text('Messages',textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ), 
              ListTile(
                title: Text('Favorite',textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings',textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}


