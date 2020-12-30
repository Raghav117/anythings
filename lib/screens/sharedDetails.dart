import 'dart:ui';

import 'package:flutter/material.dart';

class SharedDetails extends StatefulWidget {
  @override
  _SharedDetailsState createState() => _SharedDetailsState();
}

class _SharedDetailsState extends State<SharedDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Card(
                elevation: 5,
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Name:          Ramesh Ji",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Contact No.:           955588555",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Shared Date:           1/2/2000",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Shared Time:           12:58:52",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
