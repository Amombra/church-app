
import 'package:church/models/catModel.dart';
import 'package:church/pages/content_enseignement.dart';
import 'package:church/pages/enseignementService.dart';
import 'package:flutter/material.dart';


class Catword extends StatefulWidget {
  @override
  _CatwordState createState() => _CatwordState();
}

class _CatwordState extends State<Catword> {
    List<Enseignement> enseigner = [];

  Future getEnseignement() async{
    List<Enseignement> res = await loadchargerJson();
    if (res != null){
      setState(() {
        enseigner = res;
      });
    }
  }
  @override
  void initState() {
    getEnseignement();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.purple,
        title:Text("Parole de Dieu", style:TextStyle(
          color:Colors.white
        )),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child:Padding(
              padding: const EdgeInsets.only(left:18, right:18, top:20),
              child:Column(
                children: <Widget>[
                  Container(
                    height:MediaQuery.of(context).size.height,
                    width:MediaQuery.of(context).size.width,
                    child: new GridView.builder(
        itemCount: enseigner.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int i) {
          return  GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(
                            //Message
                            builder: (context)=>Contentenseignement(categorie: enseigner[i])
                          ));

                        },
                           child: Container(
                             margin:EdgeInsets.only(right:16, bottom:20) ,
                          height:160,
                          width:MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)
                            ),
                            image: DecorationImage(fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                                            image: AssetImage(enseigner[i].photo)
                                          )
                          ),
                          child:Column(
                            children: <Widget>[
                              Padding(
                               padding: const EdgeInsets.only(left:20, top:15, bottom:15),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                   enseigner[i].category,
                                   style: TextStyle(
                                     color:Colors.white,
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold
                                   ),
                                 )
                               ),
                             ),
                             SizedBox(
                               height:25
                             ),
                             Row(
                               children: <Widget>[
                                 Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 alignment: Alignment.topLeft,
                                 child:Text(
                                     enseigner[i].catTitre,
                                     //textAlign: TextAlign.justify,
                                     style: TextStyle(

                                       color:Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 10
                                     ),
                                   )
                               ),
                             ),
                            
                               ],
                             )
                            ],
                          ),
                        ),
                      );
        }),
                  )
                ],
              )
            )
          ),
        ),
      )
    );
  }
}