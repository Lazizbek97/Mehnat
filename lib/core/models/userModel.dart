// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.name,
    this.ball,
    this.picture,
    this.nomer,
    this.locationModel,
    this.pasportId,
    this.jobCategories,
    this.disc,
    this.ratingModel,
    this.jobModel,
  });

  String? name;
  int? ball;
  String? picture;
  String? nomer;
  LocationModel? locationModel;
  String? pasportId;
  List<dynamic>? jobCategories;
  String? disc;
  List<RatingModel>? ratingModel;
  List<JobModel>? jobModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        ball: json["ball"],
        picture: json["picture"],
        nomer: json["nomer"],
        locationModel: LocationModel.fromJson(json["locationModel"]),
        pasportId: json["pasportID"],
        jobCategories: List<dynamic>.from(json["jobCategories"].map((x) => x)),
        disc: json["disc"],
        ratingModel: List<RatingModel>.from(
            json["ratingModel"].map((x) => RatingModel.fromJson(x))),
        jobModel: List<JobModel>.from(
            json["jobModel"].map((x) => JobModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "ball": ball,
        "picture": picture,
        "nomer": nomer,
        "locationModel": locationModel!.toJson(),
        "pasportID": pasportId,
        "jobCategories": List<dynamic>.from(jobCategories!.map((x) => x)),
        "disc": disc,
        "ratingModel": List<dynamic>.from(ratingModel!.map((x) => x.toJson())),
        "jobModel": List<dynamic>.from(jobModel!.map((x) => x.toJson())),
      };
}

class JobModel {
  JobModel({
    this.pictures,
    this.title,
    this.disc,
    this.telNum,
    this.locationModel,
    this.price,
    this.categories,
    this.date,
  });

  List<dynamic>? pictures;
  String? title;
  String? disc;
  String? telNum;
  LocationModel? locationModel;
  int? price;
  List<dynamic>? categories;
  String? date;

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        pictures: List<dynamic>.from(json["pictures"].map((x) => x)),
        title: json["title"],
        disc: json["disc"],
        telNum: json["tel_num"],
        locationModel: LocationModel.fromJson(json["locationModel"]),
        price: json["price"],
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "pictures": List<dynamic>.from(pictures!.map((x) => x)),
        "title": title,
        "disc": disc,
        "tel_num": telNum,
        "locationModel": locationModel!.toJson(),
        "price": price,
        "categories": List<dynamic>.from(categories!.map((x) => x)),
        "date": date,
      };
}

class LocationModel {
  LocationModel({
    this.long,
    this.lat,
  });

  int? long;
  int? lat;

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        long: json["long"],
        lat: json["lat"],
      );

  Map<String, dynamic> toJson() => {
        "long": long,
        "lat": lat,
      };
}

class RatingModel {
  RatingModel({
    this.ball,
    this.pictures,
    this.comment,
  });

  int? ball;
  List<dynamic>? pictures;
  String? comment;

  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        ball: json["ball"],
        pictures: List<dynamic>.from(json["pictures"].map((x) => x)),
        comment: json["comment"],
      );

  Map<String, dynamic> toJson() => {
        "ball": ball,
        "pictures": List<dynamic>.from(pictures!.map((x) => x)),
        "comment": comment,
      };
}
