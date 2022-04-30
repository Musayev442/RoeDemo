class Data {
  var id, postTitle;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    postTitle = json['post_title'];
  }
}
