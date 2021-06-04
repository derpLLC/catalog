import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL= "https://avatars.githubusercontent.com/u/25736781?v=4";

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Ayush Dubey'),
              accountEmail: Text('ayushdubey70@gmail.com'),
              currentAccountPicture: Image.network(imageURL),
            ),
          ),
        ],
      ),
    );
  }
}
