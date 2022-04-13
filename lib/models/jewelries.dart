class Jewelries {
  String title;
  String subtitle;
  String price;
  String imageURL;
  List<String> detailUrl;

  Jewelries(
      this.title, this.subtitle, this.price, this.imageURL, this.detailUrl);

  static List<Jewelries> generateClothes() {
    return [
      Jewelries(
          "Rolex",
          "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
          "\$25000.00",
          "assets/images/watch_front_1.jpg", [
        "assets/images/watch_front_1.jpg",
        "assets/images/watch_back_1.jpg"
      ]),
      Jewelries(
          "Rolex",
          "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
          "\$25000.00",
          "assets/images/watch_front_2.jpg", [
        "assets/images/watch_front_2.jpg",
        "assets/images/watch_back_2.jpg"
      ]),
      Jewelries(
          "Rolex",
          "41mm Rolex 20201 Model Date Just Jubilee Band Full Diamonds",
          "\$25000.00",
          "assets/images/watch_front_3.jpg", [
        "assets/images/watch_front_3.jpg",
        "assets/images/watch_back_3.jpg"
      ]),
      Jewelries(
          "Roe",
          "1 OZ LIBERTY COIN WITH DIAMOND FRAME",
          "\$4750.00",
          "assets/images/necklace.jpg",
          ["assets/images/necklace.jpg", "assets/images/necklace2.jpg"]),
    ];
  }
}
