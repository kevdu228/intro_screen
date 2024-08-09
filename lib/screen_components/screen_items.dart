// this file willbe holding our page content component

import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  String img;
  String title;
  String text;

  PageItem(this.img, this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            this.img,
            height: 300,
            width: 400,
          ),
          Text(
            this.title,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              this.text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                wordSpacing: 5,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
