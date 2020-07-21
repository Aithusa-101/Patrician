import 'package:flutter/material.dart';
import 'package:patrician/Contact/Bo.dart';
import 'package:patrician/Contact/Bombali.dart';
import 'package:patrician/Contact/Bonthe.dart';
import 'package:patrician/Contact/Falaba.dart';
import 'package:patrician/Contact/Kailahun.dart';
import 'package:patrician/Contact/Kambia.dart';
import 'package:patrician/Contact/Karene.dart';
import 'package:patrician/Contact/Kenema.dart';
import 'package:patrician/Contact/Koinadugu.dart';
import 'package:patrician/Contact/Kono.dart';
import 'package:patrician/Contact/Moyamba.dart';
import 'package:patrician/Contact/PortLoko.dart';
import 'package:patrician/Contact/Pujehun.dart';
import 'package:patrician/Contact/Tonkolili.dart';
import 'package:patrician/Contact/WesternArea.dart';

class Contact extends StatefulWidget {
  Contact({Key key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 15, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Emergency Contacts"),
        bottom: TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(child: Text("Bo")),
            Tab(child: Text("Bombali")),
            Tab(child: Text("Bonthe")),
            Tab(child: Text("Falaba")),
            Tab(child: Text("Kailahun")),
            Tab(child: Text("Kambia")),
            Tab(child: Text("Karene")),
            Tab(child: Text("Kenema")),
            Tab(child: Text("Koinadugu")),
            Tab(child: Text("Kono")),
            Tab(child: Text("Moyamba")),
            Tab(child: Text("Port Loko")),
            Tab(child: Text("Pujehun")),
            Tab(child: Text("Tonkolili")),
            Tab(child: Text("Western Area")),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Bo(),
          Bombali(),
          Bonthe(),
          Falaba(),
          Kailahun(),
          Kambia(),
          Karene(),
          Kenema(),
          Koinadugu(),
          Kono(),
          Moyamba(),
          PortLoko(),
          Pujehun(),
          Tonkolili(),
          WesternArea()
        ],
        controller: _tabController,
      ),
    );
  }
}
