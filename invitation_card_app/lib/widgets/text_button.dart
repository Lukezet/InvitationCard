import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  final String customText;
  
  const TextButtons({
    super.key, required this.customText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
    onPressed: (){},
    style: TextButton.styleFrom(
      backgroundColor: Color.fromRGBO(154, 176, 156, 1),
      shape: StadiumBorder(),
      elevation: 5
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text( customText, style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25,color: Color.fromARGB(255, 255, 255, 255)),),
    ),);
  }
}