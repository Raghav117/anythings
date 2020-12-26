import 'package:anythings/screens/oldlist.dart';
import 'package:anythings/screens/settings.dart';
import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
              onPressed: () {},
              child: Text(
                "List",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          FlatButton(
              onPressed: () {},
              child: Text(
                "Active List",
                style: TextStyle(fontSize: 20),
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                "Recieved List",
                style: TextStyle(fontSize: 20),
              )),
          FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return OldList();
                  },
                ));
              },
              child: Text(
                "Old List",
                style: TextStyle(fontSize: 20),
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                "User ratings and reviews",
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(
            height: 20,
          ),
          FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ));
              },
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    ));
  }
}
