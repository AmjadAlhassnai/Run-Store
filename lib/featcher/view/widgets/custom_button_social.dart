// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import 'custom_text.dart';

// ignore: must_be_immutable
class CustomBottonSocial extends StatelessWidget {
  const CustomBottonSocial ({required this.text,required this.image,required this.width,required this.height,required this.fontWeight,required this.function,required this.color,required this.backgroundcolor,required this.textAlign, required this.fontsize ,Key? key}) : super(key: key);
  final String text;
  final Color color;
  final Color backgroundcolor;
  final double fontsize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double width;
  final double height;
  final String image;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: ColorSelect.primarycolor),
          borderRadius: const BorderRadius.all(Radius.circular(15.0)), 
          color: backgroundcolor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: ElevatedButton(
            onPressed: function,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image , fit: BoxFit.cover , width: 28,height: 28,),
                CustomText(
                  height: 1,
                  color: color,
                  fontWeight: fontWeight,
                  text: text,
                  textOverflow: TextOverflow.clip,
                  fontsize: fontsize,
                  textAlign: textAlign,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
