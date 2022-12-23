import 'package:flutter/material.dart';

class TextReuse extends StatelessWidget {
  String? text;
  Color color ;
  late double size;
  bool isBold ;
  int? maxLines;

  TextReuse({
  super.key,
   required this.text,
    this.color = Colors.black ,
    this.size = 14,
    this.isBold = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : null,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis ,
    );
  }
}
