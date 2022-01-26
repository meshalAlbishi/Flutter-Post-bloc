import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  final title;

  const TitleContainer({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
    );
  }
}
