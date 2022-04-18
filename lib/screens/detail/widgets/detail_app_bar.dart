import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstapp/models/jewelries.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final Jewelries jewelries;
  DetailAppBar(this.jewelries);
  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  final CarouselController _controller = CarouselController();
  int _curentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: 400,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _curentPage = index;
                    });
                  }),
              items: widget.jewelries.detailUrl
                  .map(
                    (item) => Builder(
                      builder: (context) => Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('$item'),
                              fit: BoxFit.fitHeight,
                            ),
                            border: Border.all(
                                width: 2.0,
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Positioned(
            child: Row(
              children: [Text("data")],
            ),
          ),
        ],
      ),
    );
  }
}
