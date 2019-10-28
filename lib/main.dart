import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Poke App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Poke App"),
          backgroundColor: Colors.cyan,
        ),

        body: Center(child: Text("Hello from Pokemon"),),

        drawer: Drawer(),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
          backgroundColor: Colors.cyan,

        ));
  }
}
