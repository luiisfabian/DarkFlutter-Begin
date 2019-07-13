import 'package:flutter/material.dart';
import 'package:flutter_appssas/ui/tab/First.dart';
import 'package:flutter_appssas/ui/tab/Second.dart';
import 'package:flutter_appssas/ui/tab/Third.dart';

class SecondPage extends StatefulWidget {
  SecondPage({this.test});

  final String test;

  @override
  _SecondPageState createState() => _SecondPageState();
}
//variable globales

TabController controller;

class _SecondPageState extends State<SecondPage> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: new Title(
              color: Colors.red, child: new Text("Esta es la nueva pagina")),
          bottom: getTabBar()

      ),
        body: getTabBarView(<Widget>
        [new First(),
          new Second(),
          new Third()
        ]
        )
    );

  }
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

TabBarView getTabBarView(var tabs) {
  return new TabBarView(
    // Add tabs as widgets
    children: tabs,
    // set the controller
    controller: controller,
  );
}
