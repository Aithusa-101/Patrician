import 'package:flutter/material.dart';

class WesternArea extends StatefulWidget {
  WesternArea({Key key}) : super(key: key);

  @override
  _WesternAreaState createState() => _WesternAreaState();
}

class _WesternAreaState extends State<WesternArea> {
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
                                isThreeLine: true,
                                subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      FlutterLogo(size: 150),
                                      Text("Sierra Leone Police "),
                                      Text("Safety"),
                                      Text("4 Fataba Street"),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("Bo, "),
                                          Text("Sierra Leone")
                                        ],
                                      ),
                                      Text(
                                          "This is a simple way to effecively deliver a baby when there is no health personnel"),
                                      RaisedButton(
                                          highlightElevation: 60,
                                          color: Colors.blue[900],
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              side: BorderSide(
                                                  color: Colors.blue[900])),
                                          child: Text(
                                            "+232 76 770820",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          onPressed: () {})
                                    ]))
                          ])));
                })));
  }
}
