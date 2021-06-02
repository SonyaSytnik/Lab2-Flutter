import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyStatefulWidget(),
    );
  }
}

var pfp = [
  Container(
    width: 60,
    height: 60,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Colors.blue[200],
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.redAccent.withOpacity(0.9),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(3, 3),
        ),
      ],
    ),
  ),
  Container(
    width: 60,
    height: 60,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Colors.blue[300],
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.redAccent.withOpacity(0.9),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(3, 3),
        ),
      ],
    ),
  ),
  Container(
    width: 60,
    height: 60,
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Colors.blue[400],
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.blueAccent.withOpacity(0.9),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(3, 3),
        ),
      ],
    ),
  )
];

var nickname = [
  Container(
    margin: const EdgeInsets.only(bottom: 5),
    child: Text(
      "1",
      style: TextStyle(
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
  Container(
    margin: const EdgeInsets.only(bottom: 5),
    child: Text(
      "2",
      style: TextStyle(
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
  Container(
    margin: const EdgeInsets.only(bottom: 5),
    child: Text(
      "3",
      style: TextStyle(
        fontWeight: FontWeight.w900,
      ),
    ),
  )
];

var tweet = [
  Container(
      padding:
          const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Column(
        children: [
          Row(children: [
            pfp[0],
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [nickname[0], tweetText],
            )),
          ])
        ],
      )),
  Container(
      padding:
          const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Column(
        children: [
          Row(children: [
            pfp[1],
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [nickname[1], tweetText],
            )),
          ])
        ],
      )),
  Container(
      padding:
          const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Column(
        children: [
          Row(children: [
            pfp[2],
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [nickname[2], tweetText],
            )),
          ])
        ],
      ))
];

var post = [
  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Column(
        children: [tweet[0], reactionsBar],
      )),
  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Column(
        children: [tweet[1], reactionsBar],
      )),
  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Column(
        children: [tweet[2], reactionsBar],
      ))
];

var tweetText = Text("Lorem ipsum dolor sit amet.");

var reactionsBar = Container(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('images/like.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage('images/retweet.webp'), scale: 3),
          ),
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: AssetImage('images/share.webp'), scale: 3),
          ),
        )
      ],
    ));

var tweetButton = FloatingActionButton(
  onPressed: null,
  child: Icon(Icons.add_comment_rounded),
);

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [post[0], post[1], post[2]],
    ),
    Text(
      'Search',
    ),
    Text(
      'Notifications',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lab 2'),
        ),
        drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )),
        body: ListView(
          children: [_widgetOptions.elementAt(_selectedIndex)],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        floatingActionButton: tweetButton);
  }
}
