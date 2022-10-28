import 'package:flutter/material.dart';

// The thing is we have to implement MaterialApp inside runApp() which is the root of the program.

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            myAlert(context);
          },
          child: Text("press"),
        ),
      ),
    );
  }
}

void myAlert(BuildContext context) {
  var alert = AlertDialog(
    title: Text("Test"),
    content: Text("Done..!"),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Kapat"))
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
