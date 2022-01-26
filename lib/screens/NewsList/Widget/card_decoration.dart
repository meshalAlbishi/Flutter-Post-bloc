import 'package:flutter/material.dart';

class CardStyles{

  static BoxDecoration cardDecoration(){
    return BoxDecoration(
      borderRadius:
      const BorderRadius.all(Radius.circular(10.0)),
      border: Border.all(
        color: Colors.blue,
        width: 3,
      ),
    );
  }

  static TextStyle titleStyle(){
    return const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  }
}