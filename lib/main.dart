import 'package:flutter/material.dart';
import 'package:tobaapp/Banking/paymentgetway.dart';
import 'package:tobaapp/Products/CementSelling.dart';
import 'package:tobaapp/Products/TobaAppCement.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatibScreen2.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatibScreen3.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatib.dart';
import 'package:tobaapp/UI/AppScreens/AlMukatibScreen4.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/UI/AppScreens/screen22.dart';
import 'package:tobaapp/UI/AppScreens/screen23.dart';

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
import 'UI/AppScreens/TobahScreen.dart';
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
      //home:  LoginOption(),
      home:SplashScreen(),

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
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
        
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
