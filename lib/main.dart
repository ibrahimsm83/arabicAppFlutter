import 'package:flutter/material.dart';
import 'package:tobaapp/Products/CementSelling.dart';
import 'package:tobaapp/Products/TobaAppCement.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatibScreen2.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatibScreen3.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatib.dart';

import 'package:tobaapp/UI/Login/LoginOption.dart';
import 'package:tobaapp/UI/Login/SplashScreen.dart';

import 'Banking/Banks.dart';
import 'Products/CementProduct.dart';
import 'Products/ChairProduct.dart';
import 'Products/HouseProduct.dart';
import 'Products/MenProduct.dart';
import 'Products/displayProduct.dart';
import 'UI/AppScreens/BahasAnMaktab.dart';
import 'UI/AppScreens/Screen20.dart';
import 'UI/AppScreens/screen21.dart';
import 'UI/AppScreens/screen24.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'CairoLight',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //firstscreen
      home:  TobaAppCement(),
      //home:  ScreenNo21(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
