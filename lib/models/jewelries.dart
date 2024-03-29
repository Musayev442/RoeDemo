//https://roejewelry.com/flutter_connection/get.php

class Jewelries {
  String title;
  String subtitle;
  String price;
  String imageURL;
  String des;
  List<String> detailUrl;
  List<String> categories;

  Jewelries(this.title, this.subtitle, this.price, this.imageURL,
      this.detailUrl, this.des, this.categories);

  static List<Jewelries> generateJewelries() {
    return [
      Jewelries(
          "Rolex",
          "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
          "\$25000.00",
          "assets/images/watch_front_1.jpg",
          ["assets/images/watch_front_1.jpg", "assets/images/watch_back_1.jpg"],
          "short description",
          ["diamond", "gold", "watch"]),
      Jewelries(
          "Rolex",
          "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
          "\$25000.00",
          "assets/images/watch_front_2.jpg",
          ["assets/images/watch_front_2.jpg", "assets/images/watch_back_2.jpg"],
          "short description",
          ["diamond", "gold", "watch"]),
      Jewelries(
          "Rolex",
          "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
          "\$25000.00",
          "assets/images/watch_front_3.jpg",
          ["assets/images/watch_front_3.jpg", "assets/images/watch_back_3.jpg"],
          "short description",
          ["diamond", "gold", "watch"]),
      Jewelries(
          "Roe",
          "1 OZ LIBERTY COIN WITH DIAMOND FRAME",
          "\$4750.00",
          "assets/images/necklace.jpg",
          ["assets/images/necklace.jpg", "assets/images/necklace2.jpg"],
          "short description",
          ["diamond", "gold", "necklace"]),
    ];
  }
}
