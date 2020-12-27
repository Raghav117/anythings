import 'package:flutter/material.dart';

class UploadNewList extends StatefulWidget {
  @override
  _UploadNewListState createState() => _UploadNewListState();
}

class _UploadNewListState extends State<UploadNewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Upload New List"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Center(
                    child: Column(
                      children: [
                        Text("Upload Your List"),
                        Icon(
                          Icons.camera_alt,
                          size: 200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Comments/add new product"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Qty", border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      child: Icon(
                        Icons.add,
                        color: Colors.lightBlueAccent,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
