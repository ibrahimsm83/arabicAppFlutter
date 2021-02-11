import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
//import 'package:tobaapp/UI/AppScreens/screen25.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';

import 'MarkazMusayda.dart';

class ScreenNo24 extends StatelessWidget {
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
     //  appBar: AppBar(
     //    backgroundColor: Colors.white,
     //
     // //   title: SearchbyTextField(),
     //    actions: <Widget>[
     //      //IconButton
     //      //IconButton
     //    ], //<Widget>[]
     //    elevation: 50.0,
     //    leading: IconButton(
     //      icon: Icon(
     //        Icons.comment,
     //        color: MyColors.ThemeColor2,
     //        size: 30,
     //      ),
     //      tooltip: 'Comment Icon',
     //      onPressed: () {
     //        Navigator.push(context,
     //            MaterialPageRoute(builder: (context) => MarkazMusayda()));
     //      },
     //    ), //IconButton
     //    brightness: Brightness.dark,
     //  ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          //height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  //Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) => ScreenNo25()));
                },
                icon: Icon(
                  Icons.image,
                  size: 36.0,
                  color: MyColors.ThemeColor2,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.book, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_rounded, size: 36.0),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavigationBarClass(),
      body: ListView(
        children: [
          Container(

            margin:EdgeInsets.only(right:30, top:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   //icon: Icon(Icons.message, size: 24.0),
                // ),
                Image.asset(
                  'assets/Group15.png',
                  height: 60,
                  width: 80,
                ),
              ],
            ),
          ),
          Center(
              child: Text(
            "الدفع",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 32.0),
          )),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey)
            ),

            //color: Colors.pink,
            margin: EdgeInsets.all(8.0),
            //padding: EdgeInsets.symmetric(vertical:100,horizontal:0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/payment3.png'),
                      Image.asset('assets/payment1.png'),
                      Image.asset('assets/payment2.png'),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "بيانات البطاقة",
                      //textAlign: TextAlign.right,
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: MyColors.ThemeColor2,
                          fontSize: 20.0),
                      //textAlign: TextAlign.right,
                    ),
                  ),
                ),
                //1_input Field
                Container(
                  //height:height*0.2,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text(
                            "CVV",
                            style: TextStyle(
                              color: MyColors.ThemeColor2,
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.only(left: 10.0),
                            width: width * 0.2,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  //border: OutlineInputBorder(),
                                  hintText: '345',
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 14.0)),
                            ),
                          ),
                        ],
                      ),
                      //2ndfield
                      Column(
                        children: [
                          Text(
                            "تاريخ الإنتهاء",
                            style: TextStyle(
                              color: MyColors.ThemeColor2,
                            ),
                          ),
                          Container(
                            width: width * 0.2,
                            child: TextField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  // border: OutlineInputBorder(),
                                  hintText: '02/5/21',
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 14.0)),
                            ),
                          ),
                        ],
                      ),
                      //3rd field
                      Column(
                        children: [
                          Text(
                            "رقم البطاقة",
                            style: TextStyle(
                              color: MyColors.ThemeColor2,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Container(
                            width: width * 0.4,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  //border: OutlineInputBorder(),
                                  hintText: 'xxxxxxxxxxxx5345',
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 14.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: MyColors.ThemeColor2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text("الإسم على الطاقة",
                          style: TextStyle(color: MyColors.ThemeColor2))),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                     // filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.ThemeColor2,
                        ),
                      ),
//
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: MyColors.ThemeColor2,
                          width: 1.5,
                        ),
                      ),
                    //
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),

                       // borderSide: BorderSide(color: Colors.red, width: 2.0),

                      ),
                    ),
                  ),
                ),
                //3input
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "الدولة",
                          style: TextStyle(color: MyColors.ThemeColor2),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          width: width * 0.4,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                ),
                              ),
                              //
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                  width: 1.5,
                                ),
                              ),
                              //
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //column2
                    Column(
                      children: [
                        Text("المدينة",
                            style: TextStyle(color: MyColors.ThemeColor2)),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          width: width * 0.4,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //inputFiled 4
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "العنوان",
                        style: TextStyle(color: MyColors.ThemeColor2),
                      )),
                ),
                Container(
                  height:height*0.08,
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.ThemeColor2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: MyColors.ThemeColor2,
                          width: 1.5,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),

                    ),
                  ),
                ),
                //Text
                // Text("TextField"),
                Column(
                  children: [
                    Text(
                      "الدفع",
                      style: TextStyle(color: MyColors.ThemeColor2, fontSize: 20.0),
                    ),
                    Center(
                      child: Container(
                        height:height*0.08,
                        margin: EdgeInsets.all(10.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                  width: 1.5,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0),
                              ),
                              hintText: 'ريال  100000',
                              hintStyle: TextStyle(
                                color: MyColors.ThemeColor2,
                                fontSize: 14.0,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                //button1
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: width*0.9,
                        height: 48.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),

                          // elevation:10.0,
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(
                            // builder: (context)=> ());
                          },
                          textColor: Colors.white,
                          splashColor: Colors.red,
                          color: MyColors.ThemeColor2,
                          padding: const EdgeInsets.all(8.0),
                          child: Text('قبول ودفع',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                //button 1 end
                 SizedBox(height: 20.0,),
                //apple button
                Container(
                  height:height*0.08,
                  margin: EdgeInsets.all(10.0),
                  //height: MediaQuery.of(context).size.height/16,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(image: AssetImage('assets/apple.png',))
                  ),

                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                       builder: (context)=> ScreenNo24()));
                    },
                  ),
                ),
                SizedBox(height: 20.0,)
                //apple button end
               /*
                //button2 apple
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: width,
                        height: 48.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black)),

                          // elevation:10.0,
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(
                            // builder: (context)=> ());
                          },
                          textColor: Colors.white,
                          splashColor: Colors.red,
                          color: Colors.white,
                          padding: const EdgeInsets.all(8.0),

                          child: Text('Pay',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
