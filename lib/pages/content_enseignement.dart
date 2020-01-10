import 'package:church/models/catModel.dart';
import 'package:church/pages/enseignementService.dart';
import 'package:flutter/material.dart';
class Contentenseignement extends StatefulWidget {

  final Enseignement categorie;
  Contentenseignement({this.categorie});
  
  

  @override
  _ContentenseignementState createState() => _ContentenseignementState();
}

class _ContentenseignementState extends State<Contentenseignement> {
  List<Enseignement> contenu = [];
    Future getEnseignement() async{
    List<Enseignement> res = await loadchargerJson();
    if (res != null){
      setState(() {
        contenu = res;
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
        title: Text('aaa'),
      ),
       backgroundColor: Colors.grey[200],
      body:Container(
        height:MediaQuery.of(context).size.height,
        child:ListView.builder(
          itemCount: contenu.length,
          itemBuilder: (context, i){
            return SingleChildScrollView(
              child: Container(
                width:MediaQuery.of(context).size.width/4,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  
                  color:Colors.white,
                  border:Border.all(color:Colors.grey[300]),
                  borderRadius: BorderRadius.circular(30)
                ),

                child: Text(
                  contenu[i].contenu[i].content
                  ),
                  ),
            );
          },
        )
      )
    );
  }
}