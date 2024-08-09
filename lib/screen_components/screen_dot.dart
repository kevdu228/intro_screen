import 'package:flutter/material.dart';

class PageDot extends StatelessWidget {
  Color color;
  PageDot(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: this.color
      ),
    );
  }
}