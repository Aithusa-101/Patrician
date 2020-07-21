import 'package:flutter/material.dart';
import 'package:patrician/Places/Clinic.dart';
import 'package:patrician/Places/DeliveryCenter.dart';
import 'package:patrician/Places/Hospital.dart';
import 'package:patrician/Places/OtherFacility.dart';
import 'package:patrician/Places/Pharmacy.dart';

class Places extends StatefulWidget {
  Places({Key key}) : super(key: key);

  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> with SingleTickerProviderStateMixin {
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
        title: Text("Places"),
        bottom: TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.nature_people), text: "Clinics"),
            Tab(icon: Icon(Icons.healing), text: "Delivery Centers"),
            Tab(icon: Icon(Icons.school), text: "Hospitals"),
            Tab(icon: Icon(Icons.healing), text: "Other Facilities"),
            Tab(icon: Icon(Icons.school), text: "Pharmacies"),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Clinic(),
          DeliveryCenter(),
          Hospital(),
          OtherFacility(),
          Pharmacy(),
        ],
        controller: _tabController,
      ),
    );
  }
}
