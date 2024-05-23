class  PropertyListModelListModel {
  String? image;
  String? amount;
  String? title;
  String? subTitle;
  String? bed;
  String? bathroom;
  String? squrefoot;
  String? location;

   PropertyListModelListModel({this.image, this.amount,this.title,this.subTitle,this.location,this.bathroom,this.bed,this.squrefoot});

   PropertyListModelListModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    amount = json['amount'];
    title = json['title'];
    subTitle = json['subTitle'];
    location = json['location'];
    bathroom = json['bathroom'];
    bed = json['bed'];
    squrefoot = json['squrefoot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['amount'] = this.amount;
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    data['location'] = this.location;
    data['bathroom'] = this.bathroom;
    data['bed'] = this.bed;
    data['squrefoot'] = this.squrefoot;
    return data;
  }
}