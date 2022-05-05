class Data {
  Data({
    required this.id,
    required this.content,
    required this.title,
    required this.excerpt,
    required this.image,
  });

  var id;
  var content;
  var title;
  var excerpt;
  var image;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        content: json["post_content"],
        title: json["post_title"],
        excerpt: json["post_excerpt"],
        image: json["meta_value"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "post_content": content,
        "post_title": title,
        "post_excerpt": excerpt,
        "meta_value": image,
      };
  @override
  String toString() {
    return '{ $id,$content,$title,$excerpt, $image }';
  }
}
