import 'package:flutter/material.dart';

class Maternal extends StatefulWidget {
  Maternal({Key key}) : super(key: key);

  @override
  _MaternalState createState() => _MaternalState();
}

class _MaternalState extends State<Maternal> {
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
