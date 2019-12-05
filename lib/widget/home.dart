import 'package:flutter/material.dart';

int _selectedIndex = 0;

class HomePage extends StatelessWidget {
 static String tag = 'home-page';
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    style: optionStyle,
  ),
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
  print(index);
  _selectedIndex = index;
}

 @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: CircleAvatar(
        radius: 40.0,
        backgroundColor: Colors.blueGrey,
        backgroundImage: AssetImage('asserts/kamrul.png'),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Kamrul',
        style: TextStyle(fontSize: 28.0,color: Colors.white),
      ),
    );

  final lorem = Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      'Kamrul Hasan is passanante about software development in web and mobile. He already developed many software for local and frelence client. He continue learning new technologies. This time start about dart language and flutter framework for andorid and ios (cross platform) application. If you have any idea feel free to contact with him via mail. Mail Address: khasancsit@gmail.com',
      style: TextStyle(fontSize: 16.0,color: Colors.white),
    ),
  );

  final body = Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(28.0),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.blue,
        Colors.lightBlueAccent
      ]),
    ),
    child: Column(
      children: <Widget>[alucard,welcome,lorem],
    ),
  );

    return Scaffold(
          appBar: AppBar(
          title: const Text('Kamrul Expo Apps'),
        ),
        body: body,
      
    );
  }
}