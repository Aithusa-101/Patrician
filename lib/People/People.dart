import 'package:flutter/material.dart';
import 'package:patrician/People/Doctor.dart';
import 'package:patrician/People/HealthOfficer.dart';
import 'package:patrician/People/Midwife.dart';
import 'package:patrician/People/Nurse.dart';

class People extends StatefulWidget {
  People({Key key}) : super(key: key);

  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("People"),
        bottom: TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.nature_people), text: "Midwives"),
            Tab(icon: Icon(Icons.healing), text: "Doctors"),
            Tab(icon: Icon(Icons.school), text: "Nurses"),
            Tab(
                icon: Icon(Icons.supervised_user_circle),
                text: "Health Officers"),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Midwife(),
          Doctor(),
          Nurse(),
          HealthOfficer(),
        ],
        controller: _tabController,
      ),
    );
  }
}
