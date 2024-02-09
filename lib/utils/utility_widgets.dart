import 'package:flutter/material.dart';

class UtilityWidgets{
  static Text text({required String text,Color color = Colors.black, double fontsize = 12}) {
    return Text(text,
      style: TextStyle(
          color: color,
          fontSize: fontsize
      ),);
  }
}
