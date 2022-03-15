import 'dart:convert';

HomeScreenModel homeScreenModelFromJson(String str) => HomeScreenModel.fromJson(json.decode(str));

String homeScreenModelToJson(HomeScreenModel data) => json.encode(data.toJson());

class HomeScreenModel {
  HomeScreenModel({
    this.data,
  });

  List<Category>? data;

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) => HomeScreenModel(
    data: List<Category>.from(json["data"].map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Category {
  Category({
    this.name,
    this.selected,
  });

  String? name;
  bool? selected;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    name: json["name"],
    selected: json["selected"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "selected": selected,
  };
}
