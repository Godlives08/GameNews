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
              'https://images.unsplash.com/photo-1538481199705-c710c4e965fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1432&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                'https://www.clipartmax.com/png/middle/103-1038980_bankers-and-professionals-meeting-regularly-for-luncheon-user-flat-icon-png.png'),
                
          ),
          Text(
            'Game News',
            style: TextStyle(fontSize: 25.0, color: Colors.white),
          ),
        ],
      ),
    );
  }

}