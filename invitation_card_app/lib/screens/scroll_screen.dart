import 'package:flutter/material.dart';

import '../widgets/page_custom.dart';
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
            CustomPageOne(iconPic:'assets/icoCeremony.png',titleOne:'C E R E M O N I A',creditsOne:'15 de Octubre a las 19:00 hs\n Finca Minetto, San Juan.\nRecibí debajo las indicaciones para llegar.',buttonText: 'Llegar a la Ceremonia!',),
            Page3(),
            CustomPageOne(iconPic:'assets/icoGift.png',titleOne:'T H E  G I F T',creditsOne:'Si deseás realizarnos un regalo \n podés colaborar con nuestra Luna de Miel...',buttonText: 'Entregar Regalo',),
            Page2()
          
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
//Imagen de <a href="https://www.freepik.es/vector-gratis/plantilla-menu-aniversario-boda_14669010.htm#page=97&query=invitar%20hoja&position=0&from_view=keyword&track=ais">Freepik</a>
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 270),
          const Text('Flor & Lucas', style: TextStyle( fontFamily:'MiFuente',fontSize:80, fontWeight: FontWeight.w300, color: Colors.blueGrey),textAlign: TextAlign.center,),
          Expanded(child: Container(),),
          const Icon(Icons.keyboard_arrow_down, size: 60, color: Color.fromARGB(255, 56, 56, 0) ,weight: 10,)
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

class Page3 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(243, 242, 238, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
              Image(image: AssetImage('assets/laurelfondorado.png')),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/pic1.png')),
              SizedBox(height: 10,),
              Text('FOREVER ~ F & L ~FOREVER',style: TextStyle(fontSize:25, fontWeight:FontWeight.w300,color: Colors.blueGrey),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Image(image: AssetImage('assets/pic2.jpg')),
              Expanded(child: Container(),),
        ],
      ),
    );
  }
}
class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(child: Image(height: 150,image: AssetImage('assets/laurelfondorado.png')),top: 0,),
        
        Positioned(child: Teztos(),top: 200,),
        
        Positioned(bottom: 0, child: 
          Container(
            color: Color.fromRGBO(154, 176, 156, 1),width: MediaQuery.of(context).size.width,height: 180,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [Text('¡Gracias por acompañarnos en este\nmomento tan importante!',style: TextStyle(fontSize:18, height: 1.5, color: Color.fromARGB(255, 255, 255, 255), fontWeight:FontWeight.w300),textAlign: TextAlign.center)]
              ))),
        Positioned(child: Image(image: AssetImage('assets/laurelbajo.png'),height: 500,width: 500,),bottom: 50,left: -130,),
        Positioned(child: TextButtons(customText: 'Confirmar Asistencia'),bottom: 300,),
      ],
    );
  }

  Column Teztos() {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('C O N F I R M A C I O N\n D E   A S I S T E N C I A ' ,style: TextStyle(fontSize:32, fontWeight:FontWeight.w300,color: Colors.blueGrey),textAlign: TextAlign.center,),
           const SizedBox(height: 25,),
           Text('Esperamos que seas parte de\nesta gran celebración.\n¡Confirmanos tu asistencia!' ,style: TextStyle(fontSize:20, height: 1.5, color: Colors.blueGrey.shade400, fontWeight:FontWeight.w300),textAlign: TextAlign.center),],);
  }
}

