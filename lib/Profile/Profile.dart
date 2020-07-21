import 'package:flutter/material.dart';
import 'package:patrician/Contact/Contact.dart';

alertDialog(BuildContext context) {
  // This is the ok button

  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Are you sure you want to Logout?"),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:
                  Text("Continue", style: TextStyle(color: Colors.blue[900]))),
          FlatButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return Contact();
                }), ModalRoute.withName('/'));
              },
              child: Text("Logout", style: TextStyle(color: Colors.red)))
        ],
        elevation: 5,
      );
    },
  );
}

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Profile'),
        ),
        body: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 5,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage("imageUrl"),
              radius: 50,
            ),
            Text("name",
                style: TextStyle(
                  fontSize: 25,
                )),
            Text("Phone Number",
                style: TextStyle(
                  fontSize: 18,
                )),
            ListTile(
              leading: Icon(Icons.pregnant_woman),
              title: Text('Maternal Form'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_pin_circle),
              title: Text('Report Maternal Death '),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.hourglass_full),
              title: Text('Report SBG Violence '),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Patrician Call Centers'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Invest/Donate'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  alertDialog(context);
                }),
          ]),
        ));
  }
}
