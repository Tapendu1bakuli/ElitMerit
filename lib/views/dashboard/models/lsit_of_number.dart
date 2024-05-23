class  ListOfNumbersModel {
  String? title;
  bool isColoured;
  Function()? onTap;


  ListOfNumbersModel({this.title,this.onTap,required this.isColoured,});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['onTap'] = this.onTap;
    data['isColoured'] = this.isColoured;
    return data;
  }
}