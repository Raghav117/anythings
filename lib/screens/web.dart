import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

// void main() => runApp(WebcamApp());

class WebcamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: WebcamPage(),
      );
}

class WebcamPage extends StatefulWidget {
  @override
  _WebcamPageState createState() => _WebcamPageState();
}

class _WebcamPageState extends State<WebcamPage> {
  // Webcam widget to insert into the tree
  Widget _webcamWidget;
  // VideoElement
  VideoElement _webcamVideoElement;
  @override
  void initState() {
    super.initState();
    // Create a video element which will be provided with stream source
    _webcamVideoElement = VideoElement();
    final stream = html.window.navigator.getUserMedia(video: true);
    // Register an webcam
    // ui.platfor
    ui.platformViewRegistry.registerViewFactory(
        'webcamVideoElement', (int viewId) => _webcamVideoElement);
    // Create video widget
    _webcamWidget =
        HtmlElementView(key: UniqueKey(), viewType: 'webcamVideoElement');
    // Access the webcam stream
    window.navigator.getUserMedia(video: true).then((MediaStream stream) {
      _webcamVideoElement.srcObject = stream;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Webcam MediaStream:',
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                ),
                Container(
                    width: 750,
                    height: 750,
                    child: _webcamWidget,
                    color: Colors.green)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _webcamVideoElement.srcObject.active
              ? _webcamVideoElement.play()
              : _webcamVideoElement.pause(),
          tooltip: 'Start stream, stop stream',
          child: Icon(Icons.camera_alt),
        ),
      );
}
