class  PropertyTypeModel {
  String? image;
  String? title;
  bool isColoured;
  Function()? onTap;


  PropertyTypeModel({this.image,this.title,this.onTap,required this.isColoured,});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['onTap'] = this.onTap;
    data['isColoured'] = this.isColoured;
    return data;
  }
}