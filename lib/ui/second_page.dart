import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({this.test});

  final String test;


  @override
  _secondPageState createState() => _secondPageState();
}
//variable globales

TabController controller;



class _secondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Title(
            color: Colors.red, child: new Text("Esta es la nueva pagina")),
        bottom: getTabBar()
      ),
    );
  }
}




void initState(){
  super.initState();

    controller = new TabController(length: 3, vsync: this);
}


TabBar getTabBar() {
  return new TabBar(
    tabs: <Tab>[
      new Tab(
        icon: new Icon(Icons.face),
      ),
      new Tab(
        icon: new Icon(Icons.add),
      ),
      new Tab(
        icon: new Icon(Icons.directions),
      ),
    ],

    controller: controller,
  );
}
