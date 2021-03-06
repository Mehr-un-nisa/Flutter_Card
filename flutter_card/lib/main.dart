// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  'Mehr-un-nisa',
                  style: TextStyle(fontSize: 17),
                ),
                subtitle:
                    Text('A computer Science student styding in UET Lahore.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 8),
                  TextButton(
                    child: Text('Click here'),
                    onPressed: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Hello world👋'),
                              content: Text('Hi, how are you ?'),
                            );
                          },
                        );
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              padding: EdgeInsets.only(right: 178.0, top: 23.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/side.jpg'),
                    radius: 38.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mehru Saleem',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'xy@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail, size: 45, color: Colors.red),
              title: Text('Todays'),
            ),
            Divider(
              color: Colors.grey,
              height: 0.02,
            ),
            ListTile(
              leading: Icon(Icons.tablet_mac),
              title: Text('Products'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Direct Materials'),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Direct Labour'),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Overheads'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Customers'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Suppliers'),
            ),
            Divider(
              color: Colors.grey,
              height: 0.02,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Consultant'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
