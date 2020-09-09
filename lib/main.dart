import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars Demo'),
        actions: [SnackbarsButton()],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/10.jpg', fit: BoxFit.cover),
      ),
    );
  }
}

class SnackbarsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        final snackBar = SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text('Thong bao, Undo'),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {},
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Text('Show Snackbar'),
    );
  }
}
