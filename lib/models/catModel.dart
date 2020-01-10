class Enseignement {
  int id;
  String category;
  String catTitre;
  String photo;
  List<Contenu> contenu;

  Enseignement(
      {this.id, this.category, this.catTitre, this.photo, this.contenu});

  Enseignement.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    catTitre = json['cat_titre'];
    photo = json['photo'];
    if (json['contenu'] != null) {
      contenu = new List<Contenu>();
      json['contenu'].forEach((v) {
        contenu.add(new Contenu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    data['cat_titre'] = this.catTitre;
    data['photo'] = this.photo;
    if (this.contenu != null) {
      data['contenu'] = this.contenu.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Contenu {
  int id;
  String titre;
  String imageContenu;
  String content;

  Contenu({this.id, this.titre, this.imageContenu, this.content});

  Contenu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titre = json['titre'];
    imageContenu = json['image_contenu'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['titre'] = this.titre;
    data['image_contenu'] = this.imageContenu;
    data['content'] = this.content;
    return data;
  }
}