import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/UI/AppScreens/screen27.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';

class ScreenNo26 extends StatelessWidget {
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                  color:MyColors.ThemeColor2,
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
     // bottomNavigationBar: BottomNavigationBarClass(),
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message, size: 24.0),
                ),
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
            //color: Colors.pink,
            margin: EdgeInsets.all(8.0),
            //padding: EdgeInsets.symmetric(vertical:100,horizontal:0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/payment3.png'),
                    Image.asset('assets/payment1.png'),
                    Image.asset('assets/payment2.png'),
                  ],
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "بيانات البطاقة",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                      //textAlign: TextAlign.right,
                    ),
                    //1_input Field
                    Container(
                      //height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            children: [
                              Text("CVV"),
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
                              Text("CVV"),
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
                                "CVV",
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
                          border: Border.all(width: 1, color: Colors.brown),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Text("الإسم على الطاقة"),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        // hintText: 'xxxxxxxxxxxx5345',
                        // hintStyle:
                        //     TextStyle(color: Colors.black, fontSize: 14.0)
                      ),
                    ),
                    //3input
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("الدولة"),
                            Container(
                              width: width * 0.4,
                              child: TextField(
                                decoration: InputDecoration(
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
                            Text("المدينة"),
                            Container(
                              width: width * 0.4,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
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
                      ],
                    ),
                    //inputFiled 4
                    Text("العنوان"),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        // hintText: 'xxxxxxxxxxxx5345',
                        // hintStyle:
                        //     TextStyle(color: Colors.black, fontSize: 14.0)
                      ),
                    ),
                    //Text
                    // Text("TextField"),
                    Column(
                      children: [
                        Text(
                          "الدفع",
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0),
                              ),
                              hintText: 'ريال  100000',
                              hintStyle: TextStyle(
                                  color: Colors.black, fontSize: 14.0)),
                        ),
                      ],
                    ),
                    //button1
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: width,
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
                              color:MyColors.ThemeColor2,
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
                                  borderRadius: BorderRadius.circular(18.0),
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
                    ),
                    //button 2 apple end
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
