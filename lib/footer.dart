import 'package:flutter/material.dart';
//import 'package:football/home.dart';
//import 'package:football/setting.dart';
//import 'package:football/archive.dart';
// import 'search.dart';
class Footer extends StatefulWidget{
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer>{
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];
  static const _footerIcons =[
    Icons.home,
    Icons.archive,
    Icons.settings
  ];
  static const _footerItemNames = [
    'Home',
    'Archive',
    'Settings'
  ];
  static const _footerRoutes = [
    '/home',
    '/archive',
    '/settings'
  ];
  @override
  void initState(){
    super.initState();
    _bottomNavigationBarItems.add(_UpdateActiveState(0));
    for(var i = 1; i < _footerItemNames.length; i++){
      _bottomNavigationBarItems.add(_UpdateActiveState(i));
    }
  }

  // アクティブ状態の時
  BottomNavigationBarItem _UpdateActiveState(int index){
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color:Colors.black87
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
        color:Colors.black87,
        ),
      )
    );
  }
  
  // アンアクティブ状態の時
  BottomNavigationBarItem _UpdateDeactiveState(int index){
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color:Colors.black26,
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
        color:Colors.black26,
        ),
      )
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] = _UpdateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
    if(_selectedIndex == 0){
      Navigator.pushNamed(
        context,
        '/'
//        context,
//        MaterialPageRoute(builder: (context) => Home()),
      );
    }else if(_selectedIndex == 1){
      Navigator.pushNamed(
        context,
          'archive',
//        context,
//        MaterialPageRoute(builder: (context) => archivePage()),
      );
    }else{
      Navigator.pushNamed(
         context,
        'setting',
//        context,
//        MaterialPageRoute(builder: (context) => settingPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}