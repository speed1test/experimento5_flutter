import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Lateral')),
      body: Center(child: Text('Esta es una prueba!')),
      drawer: buildDrawer(context),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 240,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  new UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: new Text('Pablo'),
                    accountEmail: new Text('pablo@email.com'),
                    currentAccountPicture: new CircleAvatar(
                        backgroundImage: new AssetImage('images/avatar.jpeg')
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('Chat'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/second');
            },
          ),
          ListTile(
            title: Text('Item #2'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/third');
            },
          ),
        ],
      ),
    );
  }
}