import 'package:flutter/material.dart';
//import 'package:football/home.dart';
// import 'archive.dart';
// import 'search.dart';
// import 'setting.dart';
// import 'subscribe.dart';
// import 'getArticle.dart';
import 'home.dart';
import 'archive.dart';
import 'setting.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false, //debug文字を非表示
     initialRoute: '/',
     routes: <String, WidgetBuilder>{
      //  '/':(BuildContext context) => Subscribe(),
       '/':(BuildContext context) => Home(),
      //  '/':(BuildContext context) => ArticleListView(),
      //  '/subscribe':(BuildContext context) => Subscribe(),
      //  '/search':(BuildContext context) => Search(),
        'archive':(BuildContext context) => Archive(),
        'setting':(BuildContext context) => Setting()
     },
   );
 }
}