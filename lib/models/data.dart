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

class CategoryData {
  CategoryData(
      {required this.postId,
      required this.productCategory,
      required this.postParent,
      required this.title,
      required this.price,
      required this.regularPrice,
      required this.stockStatus});

  var postId;
  var productCategory;
  var postParent;
  var title;
  var price;
  var regularPrice;
  var stockStatus;

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
        postId: json["post_id"],
        productCategory: json["product_category"],
        postParent: json["post_parent"],
        title: json["title"],
        price: json["price"] == null ? null : json["price"],
        regularPrice:
            json["regular price"] == null ? null : json["regular price"],
        stockStatus: json["stock status"],
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "product_category": productCategory,
        "post_parent": postParent,
        "title": title,
        "price": price == null ? null : price,
        "regular price": regularPrice == null ? null : regularPrice,
        "stock status": stockStatus,
      };
}
