import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';

import 'package:tobaapp/UI/AppScreens/TobahScreen.dart';

class SearchbyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'بحث عن المهندسون والمستشارون',
        border: InputBorder.none,
        focusedBorder: InputBorder.none,

        hintStyle: TextStyle(
          color: Colors.grey.shade400,
          fontWeight: FontWeight.bold,
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