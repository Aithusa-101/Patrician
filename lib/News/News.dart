import 'package:flutter/material.dart';

class HealthNews extends StatefulWidget {
  HealthNews({Key key}) : super(key: key);

  @override
  _HealthNewsState createState() => _HealthNewsState();
}

class _HealthNewsState extends State<HealthNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Health News"),
        ),
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
                                    Text("Government Vaccination in Bo"),
                                    Text("By  Konneh")
                                  ],
                                ),
                                isThreeLine: true,
                                subtitle: Column(children: <Widget>[
                                  FlutterLogo(size: 250),
                                  Text(
                                      "There is an ongoing vaccination in Bo. All children between teh ages of 5-10 years are require to take the vaccine")
                                ]))
                          ])));
                })));
  }
}
