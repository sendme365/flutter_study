import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 

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
  var url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchData();
  }
  
  fetchData() async {
    var res = http.get(url);
  }


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
