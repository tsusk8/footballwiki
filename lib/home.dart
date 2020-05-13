import 'package:flutter/material.dart';
//import 'package:football/getArticle.dart';
// import 'package:football/post_api.dart';
import 'header.dart';
import 'footer.dart';
import 'getArticle.dart';

// import 'post_api.dart' as sample;

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context){
  return Scaffold(
       appBar: Header(),
       body: ArticleListView(),
      //  body: postApi(),
       bottomNavigationBar: Footer()
  );
     }
}