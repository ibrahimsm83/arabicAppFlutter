import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Constant/ExtraSpace.dart';
import 'package:tobaapp/Constant/Images1.dart';
import 'package:tobaapp/SearchContent/Search.dart';
import 'package:tobaapp/UI/AppScreens/MarkazMusayda.dart';
import 'package:tobaapp/UI/AppScreens/screen24.dart';
import 'package:tobaapp/Widgets/bottomNavigationBar.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:tobaapp/Products/CementProduct.dart';

class VillasProduct extends StatefulWidget {
  @override
  _VillasProductState createState() => _VillasProductState();
}

class _VillasProductState extends State<VillasProduct> {
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
      appBar: AppBar(
        title: SearchbyTextField(),
        actions: <Widget>[
          //IconButton
          //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.white,
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.message,color: MyColors.ThemeColor2,
            size: 30,),
          tooltip: 'Comment Icon',
          onPressed: () {

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MarkazMusayda()));

          },
        ), //IconButton
        brightness: Brightness.dark,
      ),

      //bottomNavigationBar: BottomNavigationBarClass(),
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


      body: ListView(
        children: [

          ExtraSpace(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 90,
                // decoration: BoxDecoration(
                //     border: Border.all(
                //       color: MyColors.ThemeColor2,
                //     ),
                //     borderRadius: BorderRadius.all(Radius.circular(20))
                // ),
                child: RaisedButton.icon(
                  icon: Icon(
                    Icons.wrap_text,
                    color: Colors.white,
                  ),
                  label: Text(
                    'الفلتر',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: "SegoeUIBold"),
                  ),
                  color: MyColors.ThemeColor2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: MyColors.ThemeColor2)),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>//obahScreen()
                    //  ),
                    // );
                  },
                ),
              ),
              ExtraSpace(
                width: 20,
              ),
              Container(
                child: Text('الفلل الجاهزة',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17, fontFamily: "SegoeUIBold")
                  //TextStyle: Colors.grey.shade400,FontWeight.bold,
                ),
              ),
            ],
          ),
          ExtraSpace(
            height: 40,
          ),
          Center(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonsForTop(Texting: 'جازان',),
                  ButtonsForTop(Texting: 'الخبر',),
                  ButtonsForTop(Texting: 'الدمام',),
                  ButtonsForTop(Texting: 'الرياض',),
                ],
              )),
          ExtraSpace(
            height: 20,
          ),

          GestureDetector(
            onTap:()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>ScreenNo24()),
            ),

            child:ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            primary: true,
            itemBuilder: (context, index) {
              return ProductItems();
            },
          ),
          ),
        ],
      ),
    );
  }
}

class ProductItems extends StatelessWidget {
  @override
  var rating = 0.0;

  Widget build(BuildContext context) {
    return Container(
      height: 380,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.green, spreadRadius: 1.5),
        ],
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
                villas,
                fit: BoxFit.fill
            ),
            flex: 6,
          ),
          Expanded(
            child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text(
                      'المعرض',
                      style: TextStyle(
                          color: MyColors.ThemeColor2,
                          fontSize: 18),
                      //textAlign: TextAlign.right,
                    ),
                    ExtraSpace(width: 100,),

                    Text(
                      'مجمع النرجس',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                      textAlign: TextAlign.right,
                    ),

                  ],
                ),
                ExtraSpace(height: 10,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text('الغرف : 6',style: TextStyle(fontSize: 16),),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 5',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 7',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 1',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 4',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 8,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [


                            ExtraSpace(width: 10,),
                            Text('الغرف : 5',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 7',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 1',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 10,),
                            Text('الغرف : 4',style: TextStyle(fontSize: 16)),
                            ExtraSpace(width: 8,),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                ExtraSpace(
                  height: 10,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExtraSpace(width: 10,),
                    Text(
                      'شراءعنطريقالبنك',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      color: Colors.black,
                      height: 20,
                      width: 2,
                    ),
                    Text(
                      'شراءمباشر',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      color: Colors.black,
                      height: 20,
                      width: 2,
                    ),
                    Text(
                      'القيمةالشرائية',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      color: Colors.black,
                      height: 20,
                      width: 2,
                    ),
                    Text(
                      'الضمانات',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    ExtraSpace(width: 6,),
                  ],
                ),

              ],
            ),
            flex: 4,
          ),
        ],
      ),
    );
  }
}

class ButtonsForTop extends StatelessWidget {
  @override
  String Texting;
  ButtonsForTop({this.Texting});

  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: RaisedButton(
        child: Text(
          this.Texting,
          style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: "SegoeUIBold"),
        ),
        color: MyColors.ThemeColor2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            side: BorderSide(color: MyColors.ThemeColor2)),
        onPressed: () {},
      ),
    );
  }
}
class Quantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExtraSpace(
          width: 10,
        ),
        Column(
          children: [
            Image.asset(
              angleup,
            ),
            ExtraSpace(
              height: 5,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.ThemeColor2,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 1),
                ],
              ),
              child: Text(
                '1',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ExtraSpace(
              height: 5,
            ),
            Image.asset(
              angledown,
            ),
          ],
        ),
      ],
    );
  }
}


class SearchbyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'بحث عن مدينة-حي سكني- مجمع سكني ',
        border: InputBorder.none,
        focusedBorder: InputBorder.none,

        hintStyle: TextStyle(
          color: Colors.grey.shade400,
          fontWeight: FontWeight.bold,
          fontFamily: "SegoeUIBold"
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        //filled: true,
        fillColor: Colors.white,
        //contentPadding: EdgeInsets.all(8),
      ),
      textAlign: TextAlign.right,
    );
  }
}
