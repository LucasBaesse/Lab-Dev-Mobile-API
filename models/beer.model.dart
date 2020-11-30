
class Beer{
  int id;
  String name;
  String tagline;
  String image_url;

  Beer({this.id, this.name, this.tagline, this.image_url});

  Beer.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    tagline = json['tagline'];
    image_url = json['image_url'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['tagline'] = this.tagline;
    data['image_url'] = this.image_url;
    return data;
  }

}