import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';


class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

final refCollection = Firestore.instance.collection('test');


class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
    
      padding: EdgeInsets.all(16.0),
      child: StreamBuilder(
          stream: refCollection.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            switch(snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Center(
                  child: new CircularProgressIndicator());
                default:
                  return new ListView(children: getRecords(snapshot, context));
            }
          },
      ),
    
    );
  }
}

getRecords(AsyncSnapshot<QuerySnapshot> snapshot, BuildContext context) {
  if (snapshot.data.documents.length > 0) {
    return snapshot.data.documents
        .map((doc) => Padding(
      padding: EdgeInsets.all(12.0),
      child: new Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: new Text(doc['name']),
            ),
            ListTile(
              title: new Text("OTRA"),
            ),
          ],
        ),
      ),
    ))
        .toList();
  } else {
    List<Widget> list = [
      Center(
        child: new Text("NO HAY"),
      )
    ];
    return list;
  }
}