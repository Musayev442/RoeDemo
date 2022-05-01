import 'package:firstapp/models/jewelry.dart';
import 'package:flutter/material.dart';

import '../../models/data.dart';

var url = Uri.parse('https://roejewelry.com/flutter_connection/get.php');

class FavoriteProducts extends StatefulWidget {
  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Jewelry.getData(),
      builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data?[index].title),
                  subtitle: Text(snapshot.data?[index].id),
                );
              });
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
