import 'package:flutter/material.dart';

import 'text_button.dart';

class CustomPageOne extends StatelessWidget {
  
  final String iconPic;
  final String titleOne;
  final String creditsOne;
  final String buttonText;

  const CustomPageOne({super.key, 
  required this.iconPic, 
  required this.titleOne, 
  required this.creditsOne, 
  required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(243, 242, 238, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
              Image(image: AssetImage(iconPic),height: 120,width: 120,),
              TitleAndCredits(title: titleOne,credits: creditsOne),
              TextButtons(customText: buttonText)
          ,
        ],
      ),
    );
  }
}
class TitleAndCredits extends StatelessWidget {
  final String title;
  final String credits; 
  const TitleAndCredits({
    Key? key, 
    required this.title, 
    required this.credits,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(title ,style: TextStyle(fontSize:32, fontWeight:FontWeight.w300,color: Colors.blueGrey),textAlign: TextAlign.center,),
             const SizedBox(height: 25,),
             Text(credits ,style: TextStyle(fontSize:20, height: 1.5, color: Colors.blueGrey.shade400, fontWeight:FontWeight.w300),textAlign: TextAlign.center),
             const SizedBox(height: 25,)
             ],
             ),

    );
  }
}