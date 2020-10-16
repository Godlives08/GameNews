import 'package:flutter/material.dart';

import '../nav.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      // drawer: _menuDrawer(context),
      drawer: Nav(),
      body: Center(
          child: Text(
            'News',
            style: TextStyle(fontSize: 32.0),
          )),
    );
  }
}