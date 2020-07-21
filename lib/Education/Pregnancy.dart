import 'package:flutter/material.dart';

class Pregnancy extends StatefulWidget {
  Pregnancy({Key key}) : super(key: key);

  @override
  _PregnancyState createState() => _PregnancyState();
}

class _PregnancyState extends State<Pregnancy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 5,
                      child: InkWell(
                          onTap: () {},
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            ListTile(
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("How to deliver a baby?"),
                                    Text("By Mustapha Konneh")
                                  ],
                                ),
                                isThreeLine: true,
                                subtitle: Column(children: <Widget>[
                                  FlutterLogo(size: 250),
                                  Text(
                                      "This is a simple way to effecively deliver a baby when there is no health personnel")
                                ]))
                          ])));
                })));
  }
}
