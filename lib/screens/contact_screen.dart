import 'package:anythings/global/global.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context, false);
                  }),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("Done"))
            ],
          ),
          Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: selectednameList.map((e) {
                    // if (selectedname.containsKey(e.toString())) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightBlueAccent,
                              ),
                              child: Center(
                                child: Text(
                                  e.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     int index = selectednameList.indexOf(e);
                            //     selectedname.remove(numb[index]);

                            //     selectednameList.clear();
                            //     selectednumbList.clear();
                            //     selectedname.forEach((key, value) {
                            //       selectednameList.add(value);
                            //       selectednumbList.add(key);
                            //     });
                            //     setState(() {});
                            //   },
                            //   child: Icon(Icons.remove_circle_outline,
                            //       color: Colors.red),
                          )
                        ],
                      ),
                    );
                    // } else {
                    //   return Container();
                    // }
                  }).toList())),
          Flexible(
            child: ListView.builder(
              itemCount: numb.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor:
                        selectedname.containsKey(numb[index].toString()) == true
                            ? Colors.yellow
                            : Colors.white,
                    title: Text(name[index].toString()),
                    subtitle: Text(numb[index].toString()),
                    onTap: () {
                      if (selectedname.containsKey(numb[index].toString())) {
                        selectedname.remove(numb[index].toString());
                      } else {
                        selectedname[numb[index].toString()] =
                            name[index].toString();
                      }
                      selectednameList.clear();
                      selectednumbList.clear();
                      selectedname.forEach((key, value) {
                        selectednameList.add(value);
                        selectednumbList.add(key);
                      });
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
