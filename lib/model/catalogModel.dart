class Catalog {
  String id, createdAt, numOfProduct, title, image;

  Catalog(
      {this.id,
      this.title,
      this.image,
      this.createdAt,
      this.numOfProduct,
      });

  Catalog.fromJson(json){
    id = json['id'];
    createdAt = json ['createdAt'];
    numOfProduct = json ['numOfProduct'];
    title = json['title'];
    image = json['image'];
  
  }
}