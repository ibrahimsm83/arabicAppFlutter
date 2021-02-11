import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'Profile.dart';

class nabar extends StatefulWidget {
  int i;
  nabar(this.i);
  @override
  _nabarState createState() => _nabarState();
}

class _nabarState extends State<nabar> {
  int _currentIndex;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.i;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Profile(),

    ];

    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
                title: AutoSizeText("Home"), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: AutoSizeText("Alerts"), icon: Icon(Icons.notifications)),
            BottomNavigationBarItem(
                title: AutoSizeText("History"),
                icon: Icon(Icons.history_sharp)),
            BottomNavigationBarItem(
                title: AutoSizeText("Chat"), icon: Icon(Icons.message)),
            BottomNavigationBarItem(
                title: AutoSizeText("Setting"), icon: Icon(Icons.settings)),
          ]),
    );
  }
}
