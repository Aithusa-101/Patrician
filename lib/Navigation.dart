import 'package:flutter/material.dart';
import 'package:patrician/Contact/Contact.dart';
import 'package:patrician/News/News.dart';
import 'package:patrician/People/People.dart';
import 'package:patrician/Places/Places.dart';
import 'package:patrician/Profile/Profile.dart';
import 'package:patrician/Education/Education.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Education(),
    HealthNews(),
    People(),
    Places(),
    Contact(),
    Profile(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
              ),
              title: Text('Education'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.healing,
              ),
              title: Text('H-News'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.people,
              ),
              title: Text('People'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.place,
              ),
              title: Text('Places'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.contacts,
              ),
              title: Text('Contacts'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
          ]),
    );
  }
}
