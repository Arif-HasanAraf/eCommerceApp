import 'package:flutter/material.dart';

class ExpText extends StatelessWidget {
  final String text;
  double size;
  TextOverflow overflow;
  ExpText({Key? key, required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontSize: 20,

      ),

    );
  }
}