import 'package:church/pages/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class App extends StatelessWidget {
  

  final pages = [
    PageViewModel(
        pageColor: Color(0xff203152),
        body: Text(
          'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
          style:TextStyle(
            fontStyle: FontStyle.italic
          )
        ),
        title: Text(
          'Méditations',
          style: TextStyle(
            fontSize: 22
          ),
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage:Image.asset('assets/hot.png')
        ),
    PageViewModel(
      pageColor: Colors.orange,
      //iconImageAssetPath: 'assets/a.jpg',
      body:Text(
        'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
        style: TextStyle(
          color:Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 22
        ),
      ),
      title: Text(
        'Enseignements',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25
        ),
        ),
      mainImage: Image.asset('assets/photo_museum.png'),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
     // iconImageAssetPath: 'assets/taxi-driver.png',
      body: Text(
        'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 22
        )
      ),
      title: Text('Prières',
        style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          
          ),
      ),
      mainImage: Image.asset('assets/hot.png'),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}

/// Home Page of our example app.

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ), //Appbar
      body: Center(
        child: Text("This is the home page of the app"),
      ), //Center
    ); //Scaffold
  }
}