import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ScrollScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          physics: const BouncingScrollPhysics(), //*Fisicas de IOS
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4()
          ],
        ),
      )
    );
  }
}
class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background Image
        BackgroundImage(),
        MainContent()
      ],
    );
  }
}
class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 285),
          const Text('Flor y Lucas', style: TextStyle( fontSize: 40, fontWeight: FontWeight.w200, color: Colors.blueGrey)),
          Expanded(child: Container(),),
          const Icon(Icons.keyboard_arrow_down, size: 60, color: Color.fromARGB(255, 56, 56, 56) ,weight: 10,)
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(243, 242, 238, 1),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/NosCasamosBack1.png')));
  }
}
class Page2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(243, 242, 238, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
              Image(image: AssetImage('assets/icoCeremony.png'),height: 120,width: 120,),
              TitleAndCredits(title: 'C E R E M O N I A',credits: '15 de Octubre a las 19:00 hs\n Finca Minetto, San Juan.\nRecibí debajo las indicaciones para llegar.',),
              TextButtons(customText: 'Llegar a la Ceremonia!')
          ,
        ],
      ),
    );
  }
}
class Page3 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(243, 242, 238, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
              Image(image: AssetImage('assets/pic1.png')),
              SizedBox(height: 10,),
              Text('FOREVER ~ F & L ~FOREVER',style: TextStyle(fontSize:25, fontWeight:FontWeight.w300,color: Colors.blueGrey),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Image(image: AssetImage('assets/pic2.jpg')),
        ],
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(243, 242, 238, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
              Image(image: AssetImage('assets/icoGift.png'),height: 120,width: 120,),
              TitleAndCredits(title: 'T H E  G I F T',credits: 'Si deseás realizarnos un regalo \n podés colaborar con nuestra Luna de Miel...',),
              TextButtons(customText: 'Entregar Regalo')
          ,
        ],
      ),
    );
  }
}


