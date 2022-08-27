import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/home_body_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  Color item1color = Colors.deepPurple;
  Color item2color = Colors.grey;
  Color item3color = Colors.grey;
  Color item4color = Colors.grey;
  Color item5color = Colors.grey;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: HomeBodyWidget(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/home.png"), color: item1color, size: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/history.png"), color: item2color, size: 24,),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/account.png"), color: item2color, size: 24,),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/bell.png"), color: item3color, size: 24,),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(const AssetImage("assets/menu.png"), color: item4color, size: 24,),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.deepPurple),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          item1color = Colors.deepPurple;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.grey;
          break;
        case 1:
          item1color = Colors.grey;
          item2color = Colors.deepPurple;
          item3color = Colors.grey;
          item4color = Colors.grey;
          break;
        case 2:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.deepPurple;
          item4color = Colors.grey;
          break;
        case 3:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.deepPurple;
          break;
        case 4:
          item1color = Colors.grey;
          item2color = Colors.grey;
          item3color = Colors.grey;
          item4color = Colors.deepPurple;
          break;
      }
    });
        }
}