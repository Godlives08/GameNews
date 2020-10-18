import 'package:flutter/material.dart';

import '../nav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game News'),
      ),
      // drawer: _menuDrawer(context),
      drawer: Nav(),
      body: Center(
          child: Text(
            'Home',
            style: TextStyle(fontSize: 32.0),
          )),
    );
  }
}