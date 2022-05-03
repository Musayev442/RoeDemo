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
            return ShopGrid(products.data);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

//StatefulWidget Cevirmek lazimdir----->Yeni Metodikaya Kec
class ShopGrid extends StatelessWidget {
  var data;
  ShopGrid(this.data);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}
