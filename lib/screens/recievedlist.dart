import 'dart:ui';

import 'package:flutter/material.dart';

class RecievedList extends StatefulWidget {
  @override
  _RecievedListState createState() => _RecievedListState();
}

class _RecievedListState extends State<RecievedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Received List"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search by Contact",
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
                recievedTile(context),
                recievedTile(context),
                recievedTile(context),
                recievedTile(context),
                recievedTile(context),
                recievedTile(context),
                recievedTile(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  recievedTile(context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          "Birthday List",
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Create Date",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        isThreeLine: true,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.refresh,
              color: Colors.lightBlueAccent,
              size: 12,
            ),
            Text(
              "Completed               ",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "Shared By                ",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
