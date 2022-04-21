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
                  height: 500,
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
            bottom: 30,
            left: 180,
            child: Row(
              children: widget.jewelries.detailUrl
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor.withOpacity(
                              _curentPage == entry.key ? 0.9 : 0.4),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor.withOpacity(0.8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor.withOpacity(0.8),
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 22,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
