import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateNewList extends StatefulWidget {
  @override
  _CreateNewListState createState() => _CreateNewListState();
}

class _CreateNewListState extends State<CreateNewList> {
  var _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New List"),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(15)),
                // width: width / 2,
                child: Center(
                  child: Padding(
                      padding: EdgeInsets.all(4), child: Text("List Name")),
                ),
              ),
              buildTitle(context),
              buildseries(context),
              SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () async {
                  getImage();
                },
                child: Center(
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: Container(
        // color: Colors.blue,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blue)),
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Row(
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 40,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: Text(
                  "S.No.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        "Product",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 40,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: Text(
                  "Qty",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 40,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(color: Colors.black)),
                child: Text(
                  "Units",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              // Container(
              //   height: 25,
              //   width: 25,
              //   // decoration: BoxDecoration(
              //   //     borderRadius: BorderRadius.circular(30),
              //   //     color: Colors.lightBlueAccent),
              //   child: Icon(
              //     Icons.add,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildseries(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Row(
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "1",
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        "image/text of product",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "5",
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Kg",
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              // Container(
              //   height: 25,
              //   width: 25,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(30),
              //       color: Colors.lightBlueAccent),
              //   child: Icon(
              //     Icons.add,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
