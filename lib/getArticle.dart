import 'package:flutter/material.dart';
import 'header.dart';

class ArticleListView extends StatefulWidget {
  @override
  _ArticleListView createState() => _ArticleListView();
}

class _ArticleListView extends State<ArticleListView>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:Header(),
      body:ListView.builder(
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child:ListTile(
              leading: FlutterLogo(size: 40.0),
              title: Text("Sample"+ index.toString()),
              subtitle: Text("subSample" + index.toString()),
              trailing: Icon(Icons.more_vert),
              onTap: (){
                Navigator.of(context).pushNamed('/home');
              },
          ),
          );
      },
    )
    );
  }
}