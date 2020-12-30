import 'package:flutter/material.dart';

class OldList extends StatefulWidget {
  @override
  _OldListState createState() => _OldListState();
}

class _OldListState extends State<OldList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Old List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.check_box_outline_blank),
                      onPressed: () {},
                    ),
                    Text("Completed"),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.check_box_outline_blank),
                      onPressed: () {},
                    ),
                    Text("Rejected"),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.check_box_outline_blank),
                      onPressed: () {},
                    ),
                    Text("Canceled"),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Completed: 3",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("Rejected: 4",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("Canceled: 7",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 15,
                ),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                tile(context),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  tile(context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: ListTile(
        title: Text(
          "Birthday List",
          style: TextStyle(color: Colors.blue),
        ),
        subtitle: Text(
          "Create Date",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        trailing: Column(
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(text: "Completed by :", style: TextStyle(fontSize: 10)),
              TextSpan(
                  text: "Archanano",
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 10))
            ])),
            Text.rich(TextSpan(children: [
              TextSpan(text: "No of items :", style: TextStyle(fontSize: 10)),
              TextSpan(
                  text: "5/7",
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 10))
            ]))
          ],
        ),
      ),
    );
  }
}
