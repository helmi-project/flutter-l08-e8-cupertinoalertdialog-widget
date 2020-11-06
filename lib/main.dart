import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog Widget'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Alert Dialog',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        onPressed: () {
                          offer(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void offer(BuildContext context) {
    var alertDialog = CupertinoAlertDialog(
      title: Text(
        "Android ATC Pizza Store Offer",
        style: TextStyle(color: Colors.blue),
      ),
      content: Text("Get the 2nd Pizza for \$5 Now !"),
      actions: <Widget>[
        RaisedButton(
          color: Colors.blue,
          child: Text(
            'Yes',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          onPressed: () {
            print('Thanks, I got it.');
            Navigator.pop(context);
          },
        ),
        RaisedButton(
          color: Colors.blue,
          child: Text(
            'No',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );

    showDialog(
      //Untuk menampilkan alertDialog
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
