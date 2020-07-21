import 'package:flutter/material.dart';
import 'package:patrician/Education/Delivery.dart';
import 'package:patrician/Education/FamilyPlanning.dart';
import 'package:patrician/Education/Maternal.dart';
import 'package:patrician/Education/Pregnancy.dart';
import 'package:patrician/Education/SexEducation.dart';

class Education extends StatefulWidget {
  Education({Key key}) : super(key: key);

  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Education"),
        bottom: TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.view_module), text: "Delivery"),
            Tab(icon: Icon(Icons.pregnant_woman), text: "Pregnancy"),
            Tab(icon: Icon(Icons.school), text: "Sex Education"),
            Tab(icon: Icon(Icons.person_pin), text: "Maternal"),
            Tab(icon: Icon(Icons.view_agenda), text: "Family Planning"),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Delivery(),
          Pregnancy(),
          SexEducation(),
          Maternal(),
          FamilyPlanning(),
        ],
        controller: _tabController,
      ),
    );
  }
}
