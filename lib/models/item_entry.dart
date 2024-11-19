import 'dart:convert';

ItemEntry itemEntryFromJson(String str) => ItemEntry.fromJson(json.decode(str));

String itemEntryToJson(ItemEntry data) => json.encode(data.toJson());

class ItemEntry {
  String model;
  String pk;
  Fields fields;

  ItemEntry({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };

  String get name => fields.name;
  String get description => fields.desc;
  int get price => fields.price;
}

class Fields {
  int user;
  String name;
  int price;
  String desc;

  Fields({
    required this.user,
    required this.name,
    required this.price,
    required this.desc,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "desc": desc,
      };
}