import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Text('設定ページです'),
      ),
      bottomNavigationBar: Footer(),
    );
//    return Scaffold(
//      appBar:Header(),
//      body: Container(
//        padding: EdgeInsets.all(20),
//        child: Column(
//            children: <Widget>[
//              TextField(
//                  decoration: InputDecoration(
//                    labelText:'Name',
//                    // icon:Icon(Icons.account_circle)
//                  )
//              ),
//              TextField(
//                  decoration: InputDecoration(
//                    labelText:'Age',
//                  )
//              ),
//              TextField(
//                  decoration: InputDecoration(
//                      labelText: 'Height'
//                  )
//              ),
//              TextField(
//                  decoration:InputDecoration(
//                      labelText: 'Weight'
//                  )
//              ),
//              TextField(
//                  decoration:InputDecoration(
//                      labelText:'Nation'
//                  )
//              ),
//              TextField(
//                  decoration:InputDecoration(
//                      labelText:'Club'
//                  )
//              ),
//              TextField(
//                  decoration:InputDecoration(
//                      labelText:'Dominant Foot'
//                  )
//              ),
//            ]
//        ),
//      ),
//    );
  }
}