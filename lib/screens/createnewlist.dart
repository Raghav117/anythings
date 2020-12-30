import 'dart:io';
import 'dart:ui';
import 'package:anythings/global/modals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class CreateNewList extends StatefulWidget {
  @override
  _CreateNewListState createState() => _CreateNewListState();
}

class _CreateNewListState extends State<CreateNewList> {
  var _image;
  final picker = ImagePicker();
  List<Product> products = List();

  int dropdownvalue = 0;

  TextEditingController qtyName = TextEditingController();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Product p = Product(pickedFile.path, dropdownvalue, true);
        p.qty.text = qtyName.text;
        // qtyName.text = "0";
        setState(() {});
        // qtyName.text = "0";
        dropdownvalue = 0;
        products.add(p);
        setState(() {});
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
            child: InkWell(
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
              onTap: () {
                Navigator.pop(context, products);
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
        },
        child: Icon(Icons.camera),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
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
                Column(
                    children: products
                        .map(
                            (e) => buildseries(context, e, products.indexOf(e)))
                        .toList()),
                buildseries(context, Product("path", 1, false), -1),

                // buildseries(context),
                // SizedBox(
                //   height: 200,
                // ),
                // GestureDetector(
                //   onTap: () async {
                //     getImage();
                //   },
                //   child: Center(
                //     child: Container(
                //       width: double.infinity,
                //       height: 300,
                //       child: Center(
                //         child: Column(
                //           children: [
                //             Text("Capture Product"),
                //             Icon(
                //               Icons.camera_alt,
                //               size: 200,
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextEditingController productName = TextEditingController();

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
                  style: TextStyle(
                    color: Colors.white,
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
                  "Units",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.delete_forever,
                color: Colors.transparent,
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

  Padding buildseries(BuildContext context, Product e, int index) {
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
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Text(
                      "${index == -1 ? products.length : index}",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                    constraints: e.camera == true
                        ? BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.width / 1.5,
                          )
                        : BoxConstraints(maxHeight: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: index == -1
                        ? Center(
                            child: TextField(
                            controller: productName,
                            decoration:
                                InputDecoration(hintText: "Enter Product"),
                          ))
                        // ignore: unrelated_type_equality_checks
                        : e.camera == true
                            ? Image.file(File(e.path))
                            : Center(child: Text(e.path))),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child:
                        // index == -1
                        //     ?
                        TextField(
                  // onChanged: (value) {
                  //   if (index != -1) {
                  //     e.qty = double.parse(value);
                  //   } else {
                  //     qtyName.text = value;
                  //   }
                  // },

                  controller: index != -1 ? e.qty : qtyName,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Qty",
                  ),
                )
                    // : Container(
                    //     height: 50,
                    //     child: Center(child: Text(e.qty.toString())))
                    ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                  // width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton(
                      value: index == -1 ? dropdownvalue : e.unit,
                      items: [
                        DropdownMenuItem(
                          child: Text("Kg"),
                          value: 0,
                        ),
                        DropdownMenuItem(
                          child: Text("Gm"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Piece"),
                          value: 2,
                        ),
                      ],
                      onChanged: (value) {
                        int dropdown = int.parse(value.toString());

                        if (index != -1) {
                          e.unit = dropdown;
                        } else {
                          dropdownvalue = dropdown;
                        }
                        setState(() {});
                      })

                  // Text(
                  //   index == -1
                  //       ? "Kg"
                  //       : e.unit == 1
                  //           ? "Kg"
                  //           : "g",
                  // ),
                  ),
              // SizedBox(
              //   width: 2,
              // ),
              InkWell(
                child: Icon(
                  index != -1 ? Icons.delete_forever : Icons.add,
                  color: index != -1 ? Colors.red : Colors.blue,
                ),
                onTap: () {
                  if (index == -1) {
                    if (productName.text.length != 0) {
                      Product p =
                          Product(productName.text, dropdownvalue, false);
                      p.qty.text = qtyName.text;
                      products.add(p);
                      productName.clear();
                      dropdownvalue = 0;
                      // qtyName.text = 0.toString();
                    }
                  } else {
                    products.remove(e);
                  }

                  setState(() {});
                },
              )

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
