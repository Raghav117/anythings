import 'package:anythings/global/modals.dart';
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
              SizedBox(
                height: 80,
              ),
              buildTitle(context),
              buildseries(context),

              SizedBox(
                height: 80,
              ),
              //! ****************  ReUse   * ****************************************
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Container(
              //           decoration: BoxDecoration(
              //               border: Border.all(width: 0.5),
              //               borderRadius: BorderRadius.circular(10)),
              //           child: Center(
              //             child: TextField(
              //               decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                   hintText: "Comments/add new product"),
              //             ),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Container(
              //         width: 75,
              //         decoration: BoxDecoration(
              //             border: Border.all(width: 0.5),
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Center(
              //           child: TextField(
              //             decoration: InputDecoration(
              //                 hintText: "Qty", border: InputBorder.none),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         height: 35,
              //         width: 35,
              //         child: Icon(
              //           Icons.add,
              //           color: Colors.lightBlueAccent,
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ));
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
                      // "${index + 1}",
                      "1"),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                  // height: 30,
                  // width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Center(
                        child: Text(
                          // e.path,
                          "path",
                          softWrap: true,
                        ),
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
                      // "${e.qty}",
                      "1"),
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
                      // e.unit == 1 ? "Kg" : "g",
                      "Kg"),
                ),
              ),
              // SizedBox(
              //   width: 2,
              // ),
              InkWell(
                child: Icon(
                  Icons.delete_forever,
                  color: Colors.red,
                ),
                onTap: () {
                  // products.remove(e);
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
