import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';





class Informations extends StatefulWidget {
  @override
  _InformationsState createState() => new _InformationsState();
}

class _InformationsState extends State<Informations> with TickerProviderStateMixin {


 @override
    void initState() {
    super.initState();  
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController;
    tabController = new TabController(length: 1, vsync: this);

    var tabBarItem = new TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.orange,

      tabs: [
        
        new Tab(
          child: Column(
           children: <Widget>[
            
          ],
         ),
        ), 
      ],
      controller: tabController,
      indicatorColor: Colors.white,
    );

    var radios =Container(
              height:500,
              child:ListView.builder(
                itemCount:1,
                itemBuilder: (context, i){
                  return Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/a.jpg")
                            )
                          ),
                        ),
                        SizedBox(width:10),

                        Column(
                          children: <Widget>[
                              Text(
                               "Durant une keynote, Youtube...",
                               textAlign: TextAlign.justify,
                              ),

                              Text(
                               "Durant une keynote, Youtube..."
                              ),
                               Text(
                               "Durant une keynote, Youtube..."
                              )
                          ],
                        ),

                      ],
                    ),
                  );
                },
              )
            );






    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Church TV"),
          bottom: tabBarItem,
          backgroundColor: Colors.blue,
        ),
    
        body: 
         new TabBarView(
            controller: tabController,
            children: [
              radios
            ],
          ), 
      ),
    );
    
  }
}



