// To parse this JSON data, do
//
//     final contactUs = contactUsFromJson(jsonString);

import 'dart:convert';

ContactUs contactUsFromJson(String str) => ContactUs.fromJson(json.decode(str));

String contactUsToJson(ContactUs data) => json.encode(data.toJson());

class ContactUs {
  ContactUs({
    this.status,
    this.message,
    this.data,
  });

  bool status;
  String message;
  Data data;

  factory ContactUs.fromJson(Map<String, dynamic> json) => ContactUs(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.address,
    this.content,
    this.image,
    this.video,
    this.titleAr,
    this.contentAr,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String address;
  String content;
  String image;
  String video;
  String titleAr;
  String contentAr;
  DateTime createdAt;
  DateTime updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        address: json["address"],
        content: json["content"],
        image: json["image"],
        video: json["video"],
        titleAr: json["title_ar"],
        contentAr: json["content_ar"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "content": content,
        "image": image,
        "video": video,
        "title_ar": titleAr,
        "content_ar": contentAr,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
