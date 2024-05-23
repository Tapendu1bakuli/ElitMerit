import 'dart:ui';

class  ElevatedButtonModel {
  String? name;
  String? image;
  Color? color;
Function()? onTap;

  ElevatedButtonModel({this.name, this.onTap, this.image,this.color,});

  ElevatedButtonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    onTap = json['onTap'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['onTap'] = this.onTap;
    data['color'] = this.color;
    return data;
  }
}