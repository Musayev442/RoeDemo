class Data {
  var id, title;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    title = json['post_title'];
  }
  Data(this.id, this.title);
  @override
  String toString() {
    return '{ $id, $title }';
  }
}
