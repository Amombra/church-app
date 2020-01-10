import 'package:church/pages/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => new _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _index = 1;

  double size = 12.0;
  double activeSize = 12.0;

  PageController controller;

  @override
  void initState() {
    controller = new PageController();
    super.initState();
  }

  @override
  void didUpdateWidget(Welcome oldWidget) {
    super.didUpdateWidget(oldWidget);
  }


  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/a.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black54.withOpacity(0.6), BlendMode.darken)),
        ),
        child: Center(
          child: Text(
            "Trouvez La maison de vos Rêves",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontFamily: 'Madame'),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/b.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black54.withOpacity(0.6), BlendMode.darken))),
        child: Center(
          child: Text(
            "Trouvez La maison de vos Rêves",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontFamily: 'Madame'),
          ),
        ),
      ),
      Container(
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  "Trouvez La maison de vos Rêves",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: 'Madame'),
                ),
              ),
            ),
            FractionallySizedBox(
              alignment:
                  Alignment.lerp(Alignment.center, Alignment.bottomCenter, 0.7),
              heightFactor: 0.1,
              widthFactor: 0.8,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: customButton(context),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/c.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black54.withOpacity(0.3), BlendMode.darken),
          ),
        ),
      ),
    ];
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        Expanded(
            child: new Stack(
          children: <Widget>[
            new PageView(
              controller: controller,
              children: children,
            ),
            new Align(
              alignment: Alignment.bottomCenter,
              child: new Padding(
                padding: new EdgeInsets.only(bottom: 20.0),
                child: new PageIndicator(
                  layout: PageIndicatorLayout.WARM,
                  color: Colors.black,
                  size: size,
                  activeSize: activeSize,
                  controller: controller,
                  space: 5.0,
                  count: children.length,
                ),
              ),
            )
          ],
        ))
      ],
    ));
  }

  Widget customButton(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40.0)),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.deepPurple[900], Colors.purple],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 1.5),
                blurRadius: 1.5,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>FirstPage()
                ));
              },
              child: Center(
                child:
                    customText("Commencer", size: 20, weight: FontWeight.bold),
              )),
        ),
      ),
    );
  }

  Widget customText(String data,
      {double size, FontWeight weight, Color color: Colors.white}) {
    return Text(
      data,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: size,
      ),
      textAlign: TextAlign.center,
    );
  }
}
