import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommercev2/data/models/banner.dart';
import 'package:flutter/cupertino.dart';

Widget slider({required List<BannerItem?>? items}) {
  return CarouselSlider.builder(
    itemCount: items!.length,
    itemBuilder: (context, index, realIndex) => ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
      //  height: 120,
        width: double.infinity,
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          image: items[index]!.image!,
          placeholder: 'assets/images/loading.gif',
        ),
      ),
    ),
    options: CarouselOptions(
      enlargeCenterPage: true,
      enableInfiniteScroll: false,
      // autoPlay: true,
    ),
  );
}
