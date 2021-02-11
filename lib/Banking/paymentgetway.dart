//import 'package:arbicproj/nbar.dart';
import 'package:tobaapp/Banking/nbar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';


import 'RatingBar.dart';

//class ScreenOne extends StatefulWidget {
class PaymentGetway extends StatefulWidget {
  @override
  _PaymentGetwayState createState() => _PaymentGetwayState();
}

class _PaymentGetwayState extends State<PaymentGetway> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/14,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'بحث عن مكتب إستشارات هندسية',

                      prefixIcon: Icon(Icons.search_outlined,color: Colors.black,size: 25,),

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("المكاتب الهندسية والإستشارية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Spacer(),
                          Container(
                            height: MediaQuery.of(context).size.height/28,
                            width: MediaQuery.of(context).size.width/6,
                            decoration: BoxDecoration(
                              color: Color(0xFF12BBAE),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: FlatButton(
                              child: Row(
                                children: [
                                  AutoSizeText("الفلتر",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  Spacer(),
                                  Icon(Icons.filter,size: 7,color: Colors.white,),


                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height/1.4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    AutoSizeText("مكتب لنا للإستشارات الهندسية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                    AutoSizeText("استشارات - تصميم - إعتمادات - تنفيذ وإشراف",style: TextStyle(fontSize: 8),),
                                    RatBar(),
                                    Row(

                                      children: [
                                        AutoSizeText("مشاريع من تنفيذنا",style: TextStyle(color: Color(0xFF12BBAE),fontWeight: FontWeight.bold),),
                                        SizedBox(width: 10,),
                                        Container(
                                          height: 20,
                                          width: 3,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10,),
                                        AutoSizeText("طلب عرض سعر",style: TextStyle(color: Color(0xFF12BBAE),fontWeight: FontWeight.bold),),
                                      ],
                                    ),



                                  ],
                                ),
                                Container(

                                  height: MediaQuery.of(context).size.height/6,
                                  width: MediaQuery.of(context).size.width/3,
                                  decoration: BoxDecoration(
                                   image: DecorationImage(image: AssetImage('assets/prod.png'),fit: BoxFit.fill),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Text("الطلب المرسل",style: TextStyle(color: Color(0xFF12BBAE)),),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/5        ,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xFF12BBAE)),
                              ),
                              child: TextFormField(
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AutoSizeText("قيمة العرض",style: TextStyle(color: Color(0xFF12BBAE)),),
                                AutoSizeText("VAT",style: TextStyle(color: Color(0xFF12BBAE)),),
                                AutoSizeText("الإجمالي",style: TextStyle(color: Color(0xFF12BBAE)),),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(

                                    height: MediaQuery.of(context).size.height/20,
                                    width: MediaQuery.of(context).size.width/4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color:Color(0xFF12BBAE)),
                                    ),
                                    child: Center(child: Text("100000 ريال",style: TextStyle(color: Color(0xFF12BBAE)),))),
                                Container(

                                    height: MediaQuery.of(context).size.height/20,
                                    width: MediaQuery.of(context).size.width/4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color:Color(0xFF12BBAE)),
                                    ),
                                    child: Center(child: AutoSizeText("15000 ريال",style: TextStyle(color: Color(0xFF12BBAE)),))),
                                Container(

                                    height: MediaQuery.of(context).size.height/20,
                                    width: MediaQuery.of(context).size.width/4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color:Color(0xFF12BBAE)),
                                    ),
                                    child: Center(child: Text("115000 ريال",style: TextStyle(color: Color(0xFF12BBAE)),))),

                              ],
                            ),
                            SizedBox(height: 20,),
                            AutoSizeText("قبولكم لهذا العرض يعني موافقتكم على الشروط والأحكام لتطبيق طوبة",style: TextStyle(fontSize: 14),),
                            AutoSizeText("قبولكم لهذا العرض يعني موافقتكم على الشروط والأحكام لتطبيق طوبة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),

                          ],
                        ),
                      ),
                      Container(height: MediaQuery.of(context).size.height/16,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF12BBAE),
                        ),
                        child: FlatButton(
                          child: AutoSizeText("تعديل الطلبات وطلب عرض جديد",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: MediaQuery.of(context).size.height/16,
                            width: MediaQuery.of(context).size.width/2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFF12BBAE),
                            ),
                            child: FlatButton(
                              child: AutoSizeText("رفض العرض",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
                            ),
                          ),
                          Container(height: MediaQuery.of(context).size.height/16,
                            width: MediaQuery.of(context).size.width/2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFF12BBAE),
                            ),
                            child: FlatButton(
                              child: AutoSizeText("قبول العرض",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                            ),
                          ),
                        ],
                      ),



                    ],
                  ),
                ),

              ],
            ),
          )

      ),
    );
  }
}
