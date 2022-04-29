// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Data welcomeFromJson(String str) => Data.fromJson(json.decode(str));

String welcomeToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    required this.id,
    required this.postAuthor,
    required this.postDate,
    required this.postDateGmt,
    required this.postContent,
    required this.postTitle,
    required this.postExcerpt,
    required this.postStatus,
    required this.commentStatus,
    required this.pingStatus,
    required this.postPassword,
    required this.postName,
    required this.toPing,
    required this.pinged,
    required this.postModified,
    required this.postModifiedGmt,
    required this.postContentFiltered,
    required this.postParent,
    required this.guid,
    required this.menuOrder,
    required this.postType,
    required this.postMimeType,
    required this.commentCount,
  });

  String id;
  String postAuthor;
  DateTime postDate;
  DateTime postDateGmt;
  String postContent;
  String postTitle;
  String postExcerpt;
  String postStatus;
  String commentStatus;
  String pingStatus;
  String postPassword;
  String postName;
  String toPing;
  String pinged;
  DateTime postModified;
  DateTime postModifiedGmt;
  String postContentFiltered;
  String postParent;
  String guid;
  String menuOrder;
  String postType;
  String postMimeType;
  String commentCount;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        postAuthor: json["post_author"],
        postDate: DateTime.parse(json["post_date"]),
        postDateGmt: DateTime.parse(json["post_date_gmt"]),
        postContent: json["post_content"],
        postTitle: json["post_title"],
        postExcerpt: json["post_excerpt"],
        postStatus: json["post_status"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        postPassword: json["post_password"],
        postName: json["post_name"],
        toPing: json["to_ping"],
        pinged: json["pinged"],
        postModified: DateTime.parse(json["post_modified"]),
        postModifiedGmt: DateTime.parse(json["post_modified_gmt"]),
        postContentFiltered: json["post_content_filtered"],
        postParent: json["post_parent"],
        guid: json["guid"],
        menuOrder: json["menu_order"],
        postType: json["post_type"],
        postMimeType: json["post_mime_type"],
        commentCount: json["comment_count"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "post_author": postAuthor,
        "post_date": postDate.toIso8601String(),
        "post_date_gmt": postDateGmt.toIso8601String(),
        "post_content": postContent,
        "post_title": postTitle,
        "post_excerpt": postExcerpt,
        "post_status": postStatus,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "post_password": postPassword,
        "post_name": postName,
        "to_ping": toPing,
        "pinged": pinged,
        "post_modified": postModified.toIso8601String(),
        "post_modified_gmt": postModifiedGmt.toIso8601String(),
        "post_content_filtered": postContentFiltered,
        "post_parent": postParent,
        "guid": guid,
        "menu_order": menuOrder,
        "post_type": postType,
        "post_mime_type": postMimeType,
        "comment_count": commentCount,
      };
}
