import 'package:flutter/material.dart';
import 'app_config/routes.dart';

class Nav extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: menuItems(context),
      ),
    );
  }

List<Widget> menuItems(BuildContext context) {
    List<Widget> items = List<Widget>();
    items
      ..add(menuDrawerHeader());

    for (Map i in navs) {
      items.add(ListTile(
        title: Text(
          i['label'],
          style: TextStyle(fontSize: 20.0, color: Colors.teal),
        ),
        leading: Icon(
          i['icon'],
          color: Colors.teal,
        ),
        onTap: (){
          Navigator.pushNamed(context, i['route']);
        },
      ));
    }

    return items;
  }

  Widget menuDrawerHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://pixabay.com/get/54e8d3424253a914f6d1867dda353678153dd6e45258744d_1920.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2018/03/01/14/57/portrait-3190849_960_720.jpg'),
          ),
          Text(
            'Flutter Dart Vader',
            style: TextStyle(fontSize: 25.0, color: Colors.black54),
          ),
        ],
      ),
    );
  }

}