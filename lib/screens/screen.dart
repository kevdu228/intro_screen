// this file willbe holding our page content component

import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  String img;
  String title;
  String text;

  PageItem(this.img,this.title,this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(this.img),

          Padding(padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(this.title,style: TextStyle(
            fontFamily: 'Poppings',
            fontWeight: FontWeight.bold
          ),),),

          Padding(padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(this.text,style: TextStyle(
            fontFamily: 'Poppings',
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.justify,
          
          
          ),),

        ],
      ),
    );
  }
}