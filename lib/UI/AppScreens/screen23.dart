//import 'package:arabicapp/screen22.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Products/TobaAppCement.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
import 'package:tobaapp/UI/AppScreens/screen24.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';

import 'MarkazMusayda.dart';

class ScreenNo23 extends StatelessWidget {
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final r1 = 100000;
    final r2 = 15000;
    final r3 = 115000;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: SearchbyTextField(),
        actions: <Widget>[
          //IconButton
          //IconButton
        ], //<Widget>[]
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(
            Icons.comment,
            color: MyColors.ThemeColor2,
            size: 30,
          ),
          tooltip: 'Comment Icon',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MarkazMusayda()));
          },
        ), //IconButton
        brightness: Brightness.dark,
      ),
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
      // bottomNavigationBar: BottomNavigationBarClass(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 30.0,top: 30.0,right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/group11.png'),
                Text(
                    "مقاولي الباطن",
                    style: TextStyle(color: Colors.black, fontSize: 22.0,fontFamily: "SegoeUIRegular"),
                  ),

              ],
            ),
          ),
          //pic column
          Container(
            margin: EdgeInsets.all(15),
            // width: MediaQuery.of(context).size.width * 7.0,
            //color: Colors.blue,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black)),

            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          bottom: height * 0.1, left: width * 0.01),
                      child: Image.asset('assets/Group14.png',
                          width: 100, height: 100, fit: BoxFit.fill),
                    ),
                    Container(
                      //color: Colors.red,
                      width: width * 0.6,
                      padding: EdgeInsets.all(0.4),
                      // padding: EdgeInsets.only(
                      //     left: width * 0.01, right: width * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "مكتب لنا للمقاولات العامة",
                            //"المكاتب الهندسية والإستشارية",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          //text2
                          Text(
                            "استشارات - تصميم-إعتمادات - تنفيذ وإشراف",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                          //Rating widget
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //mainAxisSize: MainAxisSize.max,
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[

                              SmoothStarRating(
                                allowHalfRating: false,
                                rating: rate,
                                onRated: (value) {
                                  print(rate);
                                  // setState(() {
                                  //   rate=value;
                                  //
                                  // });
                                },
                                starCount: 5,
                                size: 25.0,
                                isReadOnly: false,
                                filledIconData: Icons.star,
                                color: Colors.black,
                                borderColor: Colors.black,
                                spacing: 0.0),
                            ],
                          ),
                          //Rating text below code
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "مشاريع من تنفيذنا",
                                style: TextStyle(
                                    color: MyColors.ThemeColor2,
                                    fontSize: 14.0),
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                //padding: EdgeInsets.all(10.0),
                                height: 20.0,
                                width: 5.0,
                                color: Colors.grey,
                              ),
                              Text(
                                "طلب عرض سعر",
                                style: TextStyle(
                                    color: MyColors.ThemeColor2,
                                    fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //textinput filed
                      Align(
                        alignment: Alignment.topRight,
                        child:
                           Text("الطلب المرسل",
                                style: TextStyle(color: MyColors.ThemeColor2)),
                      ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,

                  //height: MediaQuery.of(context).size.height * 0.2,
                  //width: 150,
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.ThemeColor2,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      // labelText: 'Password',
                      //
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: MyColors.ThemeColor2,
                          width: 1.5,
                        ),
                      ),
                      //
                    ),
                    //color

                    //color
                  ),
                ),
                //iput1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("الإجمالي",
                            style: TextStyle(color: MyColors.ThemeColor2)),
                        Container(
                          width: 100.0,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              //border color
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ريال115000',
                              labelStyle:
                                  TextStyle(color: MyColors.ThemeColor2),
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //input2
                    Column(
                      children: [
                        Text("VAT",
                            style: TextStyle(color: MyColors.ThemeColor2)),
                        Container(
                          width: 100.0,
                          padding: EdgeInsets.only(top: 5.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ريال$r2',
                              labelStyle:
                                  TextStyle(color: MyColors.ThemeColor2),
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //input 3
                    Column(
                      children: [
                        Text(
                          "قيمة العرض",
                          style: TextStyle(color: MyColors.ThemeColor2),
                        ),
                        Container(
                          width: 100.0,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: MyColors.ThemeColor2,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: MyColors.ThemeColor2, width: 1.0),
                              ),
                              //filled: true,
                              labelText: 'ريال$r1',
                              labelStyle: TextStyle(
                                color: MyColors.ThemeColor2,
                              ),
                              //labelText: '$r1',
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //end input3
                    //text
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //text
                //textAlign: TextAlign.start
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "قبولكم لهذا العرض يعني موافقتكم على الشروط والأحكام لتطبيق طوبة طوبة",
                        style: TextStyle(fontSize: 11.0),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "اضغط هنا للإطلاع على الشروط والأحكام الخاصة بالتطبيق",
                        style: TextStyle(fontSize: 11.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //buttan
                //button1
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: width * 0.8,
                        height: 55.0,
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
                          child: Text('تعديل الطلبات وطلب عرض جديد',
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 150.0,
                            height: 55.0,
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
                              child: Text('رفض العرض',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //button2 end
                    //button3
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 150.0,
                            height: 55.0,
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
                              child: Text('رفض العرض',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //buttan 3 end
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            // decoration: BoxDecoration(border: Border.all()),
          ),
        ],
      ),
    );
  }
}

/*
class ScreenNo23 extends StatelessWidget {
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: SearchbyTextField(),
        actions: <Widget>[
          //IconButton
          //IconButton
        ], //<Widget>[]
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.comment,color: MyColors.ThemeColor2,
            size: 30,),
          tooltip: 'Comment Icon',
          onPressed: () {


            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MarkazMusayda()));


          },
        ), //IconButton
        brightness: Brightness.dark,

      ),
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
                onPressed: () {

                },
                icon: Icon(Icons.person, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.book, size: 36.0),
              ),
              IconButton(
                onPressed: () {

                },
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
            color: Colors.grey[500],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/group11.png'),
                Text(
                  "مقاولي الباطن  ",
                  style: TextStyle(color: Colors.black, fontSize: 22.0),
                ),
              ],
            ),
          ),
          //pic column
          Container(
            //width: MediaQuery.of(context).size.width * 7.0,
            //color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          bottom: height * 0.1, left: width * 0.02),
                      child: Image.asset('assets/Group14.png',
                          width: 100, height: 100, fit: BoxFit.fill),
                    ),
                    Container(
                      // color: Colors.blue,
                      padding: EdgeInsets.only(
                          left: width * 0.1, right: width * 0.01),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "المكاتب الهندسية والإستشارية",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                          //text2
                          Text(
                            "استشارات - تصميم - إعتمادات - تنفيذ وإشراف",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                          //Rating widget
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //mainAxisSize: MainAxisSize.max,
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Icon(Icons.star_sharp),
                              Icon(Icons.star_sharp),
                              Icon(Icons.star_sharp),
                              Icon(Icons.star_sharp),
                              Icon(Icons.star_sharp),
                            ],
                          ),
                          //Rating text below code
                          Row(
                            children: [
                              Text(
                                "مشاريع من تنفيذنا",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                //padding: EdgeInsets.all(10.0),
                                height: 20.0,
                                width: 5.0,
                                color: Colors.grey,
                              ),
                              Text(
                                "طلب عرض سعر",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //textinput filed
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              "الطلب المرسل",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,

                  //height: MediaQuery.of(context).size.height * 0.2,
                  //width: 150,
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: 'Password',
                    ),
                  ),
                ),
                //iput1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("الإجمالي"),
                        Container(
                          width: 100.0,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'ريال115000',
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //input2
                    Column(
                      children: [
                        Text("VAT"),
                        Container(
                          width: 100.0,
                          padding: EdgeInsets.only(top: 5.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'ريال115000',
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //input 3
                    Column(
                      children: [
                        Text("قيمة العرض"),
                        Container(
                          width: 100.0,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'ريال115000',
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //end input3
                    //text
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //text
                //textAlign: TextAlign.start
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "قبولكم لهذا العرض يعني موافقتكم على الشروط والأحكام لتطبيق طوبة طوبة",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text(
                        "اضغط هنا للإطلاع على الشروط والأحكام الخاصة بالتطبيق",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //buttan
                //button1
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 250.0,
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
                          child: Text('تعديل الطلبات وطلب عرض جديد',
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 150.0,
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
                              child: Text('قبول العرض',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //button2 end
                    //button3
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 150.0,
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
                              child: Text('قبول العرض',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //buttan 3 end
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
