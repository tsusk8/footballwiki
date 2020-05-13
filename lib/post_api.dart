// import 'package:flutter/material.dart';
// import 'header.dart';
// import 'dart:convert'; // Contains the JSON encoder
// import 'package:http/http.dart'; // Contains a client for making API calls
// import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
// import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements

// class postApi extends StatefulWidget {
//   @override
//   _postApi createState() => _postApi();
// }

// class _postApi extends State<postApi>{
//   Future initiate() async {
//   // Make API call to Hackernews homepage
//   var client = Client();
//   Response response = await client.get('https://news.ycombinator.com');

//   // Use html parser
//   var document = parse(response.body);
//   List<Element> links = document.querySelectorAll('td.title > a.storylink');
//   List<Map<String, dynamic>> linkMap = [];

//   for (var link in links) {
//     linkMap.add({
//       'title': link.text,
//       'href': link.attributes['href'],
//     });
//   }

//   return json.encode(linkMap);
// }
//   var sample = "sample";
//   var subtitle = "subtitle";
//   await initiate();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:,
//       // initiate();
//     //   ListView.builder(
//     //     itemBuilder: (BuildContext context, int index){
//     //       return new Card(
//     //         child:ListTile(
//     //           leading: FlutterLogo(size: 40.0),
//     //           title: response.body,
//     //           // title: sample + index.toString(),
//     //           // subtitle: subSample + index.toString()),
//     //           trailing: Icon(Icons.more_vert),
//     //           onTap: (){
//     //             Navigator.of(context).pushNamed('/home');
//     //           },
//     //       ),
//     //       );
//     //   },
//     // )
//     );
//   }
// }