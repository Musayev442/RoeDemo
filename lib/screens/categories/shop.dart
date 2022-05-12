import 'package:firstapp/models/jewelries.dart';
import 'package:firstapp/models/product_service.dart';
import 'package:flutter/material.dart';

import '../../models/data.dart';

class Shop extends StatefulWidget {
  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  var products;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products = ProductService().getProduct();
    var pr = ProductService().getProductDetails();
    print(pr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: FutureBuilder(
        future: products,
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
          if (snapshot.hasData) {
            return ProductsGrid(snapshot);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  GridView ProductsGrid(var snapshot) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 4 / 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: snapshot.data.length,
        itemBuilder: (BuildContext ctx, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                          "https://roejewelry.com/wp-content/uploads/${snapshot.data[index].image}"),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.1,
                                blurRadius: 1,
                                offset: Offset(0, 1),
                              )
                            ]),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 22,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      Text(
                        snapshot.data[index].title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 1.5),
                      ),
                      Text(
                        "\$25.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

          // return Card(
          //   child: Container(
          //     alignment: Alignment.center,
          //     child: Column(
          //       children: [
          //         Image.network(
          //           "https://roejewelry.com/wp-content/uploads/${snapshot.data[index].image}",
          //           width: 130,
          //           height: 130,
          //         ),
          //         Text(snapshot.data[index].title),
          //       ],
          //     ),
          //   ),
          // );