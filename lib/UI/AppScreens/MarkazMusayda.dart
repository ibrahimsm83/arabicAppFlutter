import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Products/VillasProduct.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import '../../Constant/Images.dart';



class MarkazMusayda extends StatefulWidget {
  @override
  _MarkazMusaydaState createState() => _MarkazMusaydaState();
}
class  _MarkazMusaydaState extends State<MarkazMusayda> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.instance = ScreenUtil(
      height: 700,
      width: MediaQuery.of(context).size.width,
      allowFontScaling: true,
    )..init(context);
    ScreenUtil screenUtil = ScreenUtil();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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

      // bottomNavigationBar: BottomNavigationBarClass(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          //height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => displayProduct()));
                 },
                icon: Icon(
                  Icons.image,
                  size: 36.0,
                  color: MyColors.ThemeColor2,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => TobahScreen()));

                },
                icon: Icon(Icons.person, size: 36.0),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.book, size: 36.0),
              ),
              IconButton(
                onPressed: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => displayProduct()));
                //
                 },
                icon: Icon(Icons.favorite, size: 36.0),
              ),
              IconButton(
                onPressed: () {

                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => TobahScreen()));
                //
                 },
                icon: Icon(Icons.account_circle_rounded, size: 36.0),
              ),
            ],
          ),
        ),
      ),
      body:SingleChildScrollView(child:  Stack(
        children: [
          Column(children:[Container(
            margin: EdgeInsets.only(left: 140, top: 30),

            height: 100,
            width: 120,
            child: Image.asset(mainlogo),
          ),
            Container(
              margin: EdgeInsets.only(left: 140, top: 10),
              height: 50,
              width: 150,
              child: Image.asset(markazmuslimah,  fit:BoxFit.fill

              ),
            ),],
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 280),

                child: Column(
                  children: [

                    Container(
                      height: 30,
                      width: width,
                      child: Text('مرحبا بكم في طوبة كيف يمكننا المساعدة', textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      height: 30,
                      width: width,
                      child: Text('السلام عليكم ', textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5),


                    Container(
                      height: 30,
                      width: width,
                      child: Text('وعليكم السلام ', textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 5),


                    Container(
                      height: 30,
                      width: width,
                      child: Text('كلمت مقاول عندكم وما رد علي وأنتم قلتم في ثلاثة أيام الرد ', textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      height: 30,
                      width: width,
                      child: Text('لحظات لو سمحت خليني اشوف لك عروض الأسعار ', textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 5),


                    Container(
                      height: 30,
                      width: width,
                      child: Text('أتفضل ', textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 5),

                    Container(
                      height: 30,
                      width: width,
                      child: Text('شكر لإنتظارك العرض الان موجود ومعاه 10% خصم', textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 20),
/*
                    Container(
                        margin: EdgeInsets.only(left: 140, top: 30),
                        height: 30,
                        width: width,
                        child: Row(children: [
                        // Container(
                        //   child: Text('إرسال', textAlign: TextAlign.left,
                        //   ),
                        // ),
                      //   Container(
                      //   child: Text('شكر لكم ما قصرتو', textAlign: TextAlign.right,
                      //   ),
                      // ),
                        ],
                      )
                    ),
*/
                  //textbox
                Container(

                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("إرسال",style:
    TextStyle(color: Colors.blue, fontSize: 24.0,fontWeight: FontWeight.bold),),
                      //Image.asset('assets/group11.png'),
                      Container(

                        width: width * 0.4,
                        child: TextField(
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                              hintText: 'شكر لكم ما قصرتو',
                              hintStyle: TextStyle(
                                  color: Colors.brown, fontSize: 16.0)),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.brown),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                    SizedBox(height: 20),
                  //te







                  ],
                ),
              ),
            ],
          ),
        ],
      ),),);
  }
}