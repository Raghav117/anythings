import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: TextStyle(fontSize: 15),
                ),
                Checkbox(value: true, onChanged: (value) {})
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Block Contact",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Freeze Out",
              style: TextStyle(fontSize: 15),
            ),
            Slider(
              activeColor: Colors.blue,
              min: 0,
              max: 60,
              label: "$sliderValue",
              divisions: 60,
              onChangeEnd: (value) {
                sliderValue = value;
                setState(() {});
              },
              onChangeStart: (value) {
                sliderValue = value;
                setState(() {});
              },
              onChanged: (value) {
                sliderValue = value;
                setState(() {});
              },
              value: sliderValue,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Are You Seller",
                  style: TextStyle(fontSize: 15),
                ),
                Checkbox(value: true, onChanged: (value) {})
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Row(
            //   mainAxisAlignment:
            //       MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Are You Buyer",
            //       style: TextStyle(fontSize: 15),
            //     ),
            //     Checkbox(value: true, onChanged: (value) {})
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Visible Contact Number \nto shared person",
                  style: TextStyle(fontSize: 15),
                ),
                Checkbox(value: true, onChanged: (value) {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
