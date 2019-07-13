import 'package:flutter/material.dart';
import 'package:flutter_appssas/ui/second_page.dart';
class FirstPage  extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(

     backgroundColor: Colors.black,

      appBar: AppBar(
          title: Center(
            child: new Text("HOLA AQUI ESTA TODO"),

          ),
          backgroundColor: Colors.green,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(7.0),
            )
          ]),
      body: new Container(
        color: Colors.grey,

        child: new Table(border : TableBorder.all(
          width: 1.0,
          color: Colors.orange,

        )),

      ),
      floatingActionButton: FloatingActionButton(

        //onPressed: () => print("HOLA"), child: Icon(Icons.add),

      onPressed: () => goToSecondPage(context),
      child: Icon(Icons.add),

      ),
    );
  }
}


goToSecondPage(context){
  Navigator.push(context, MaterialPageRoute(builder: (_){
    return SecondPage();
  }));
}

