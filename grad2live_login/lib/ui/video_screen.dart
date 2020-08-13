import 'package:flutter/material.dart';

class demoVideo extends StatefulWidget {
  static const String id = 'video_screen';
  @override
  _demoVideoState createState() => _demoVideoState();
}

class _demoVideoState extends State<demoVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload demo video"),
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.white12,
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 150),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Upload A Demo Video For Verification",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 57,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white38,
                      )),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              debugPrint("");
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Browse",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            " Attach video              ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            padding: EdgeInsets.all(0.0),
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              debugPrint("");
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              margin: EdgeInsets.only(top: 3),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => videoUpload()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class videoUpload extends StatefulWidget {
  @override
  _videoUploadState createState() => _videoUploadState();
}

class _videoUploadState extends State<videoUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Upload demo video"),
          backgroundColor: Colors.grey.shade900,
        ),
        backgroundColor: Colors.white12,
        body: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          children: <Widget>[
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Your video has been accepted. Kindly wait till we verify your details...",
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  margin: EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () {
                        debugPrint("");
                      },
                      child: Text("Continue to dashboard"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
