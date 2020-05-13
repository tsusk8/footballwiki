import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';


class Subscribe extends StatefulWidget{
  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe>{
  List<String> _items = ["CF", "ST", "LWG", "RWG", "OMF", "CMF", "LM", "RM", "DMF", "CB", "LB", "RB", "LWB", "RWB", "GK"];
  String _selectedItem = "CF";

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar:Header(),
    body: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
        TextField(
            decoration: InputDecoration(
              labelText:'Name',
              // icon:Icon(Icons.account_circle)
            )
        ),
        TextField(
            decoration: InputDecoration(
            labelText:'Age',
          )
        ),
        DropdownButton<String>(
          value: _selectedItem,
          onChanged: (String newValue){
            setState(() {
              _selectedItem = newValue;
            });
          },
          selectedItemBuilder: (context){
            return _items.map((String item){
              return Text(
                item,
                style: TextStyle(color:Colors.orange),
              );
            }).toList();
          },
          items: _items.map((String item){
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: item == _selectedItem
                  ? TextStyle(fontWeight : FontWeight.bold)
                  : TextStyle(fontWeight : FontWeight.normal),
              ),
            );
          }).toList(),
          ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Height'
          )
        ),
        TextField(
          decoration:InputDecoration(
            labelText: 'Weight'
            )
        ),
        TextField(
          decoration:InputDecoration(
            labelText:'Nation'
          )
        ),
        TextField(
          decoration:InputDecoration(
            labelText:'Club'
          )
        ),
        TextField(
          decoration:InputDecoration(
            labelText:'Dominant Foot'
          )
        ),
          ]
      ),
    ),
    bottomNavigationBar: Footer(),
  );
}
}
