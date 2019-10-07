import 'package:flutter/material.dart';
import 'Widgets.dart';
import 'pages.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    homepage,
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FloatingSearchBar.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Scaffold(
                body: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: <Widget>[
                      _widgetOptions.elementAt(_selectedIndex),
                      RaisedButton(
                          child: Text('Open route'),
                          onPressed: () {
//Navigator.push(context,MaterialPageRoute(builder: (context) => FirstRoute()) );
// Navigate to second route when tapped.
                          })
                    ],
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      title: Text('Business'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.school),
                      title: Text('School'),
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.amber[800],
                  onTap: _onItemTapped,
                ));
          },
          trailing: CircleAvatar(
            child: Text("RD"),
          ),
          drawer: Drawer(
            child: Container(),
          ),
          onChanged: (String value) {},
          onTap: () {},
          decoration: InputDecoration.collapsed(
            hintText: "Search...",
          ),
        ),);
  }
}

/*Scaffold(
body: Align(
alignment: Alignment.topCenter,
child: Column(
children: <Widget>[
_widgetOptions.elementAt(_selectedIndex),
RaisedButton(
child: Text('Open route'),
onPressed: () {
//Navigator.push(context,MaterialPageRoute(builder: (context) => FirstRoute()) );
// Navigate to second route when tapped.
})
],
),
),
bottomNavigationBar: BottomNavigationBar(
items: const <BottomNavigationBarItem>[
BottomNavigationBarItem(
icon: Icon(Icons.home),
title: Text('Home'),
),
BottomNavigationBarItem(
icon: Icon(Icons.business),
title: Text('Business'),
),
BottomNavigationBarItem(
icon: Icon(Icons.school),
title: Text('School'),
),
],
currentIndex: _selectedIndex,
selectedItemColor: Colors.amber[800],
onTap: _onItemTapped,
));*/