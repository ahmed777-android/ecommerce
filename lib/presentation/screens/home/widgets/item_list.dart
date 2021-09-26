import 'package:ecommercev2/data/models/item.dart';
import 'package:flutter/material.dart';

Widget buildList({List<Item?>? items}) => SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(8),
          width: 150,
          height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amberAccent,
                  ),
                  width: 200,
                  height: 130,
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    image: items![index]!.image,
                    placeholder: 'assets/images/loading.gif',
                  )),
              const SizedBox(height: 10),
              Text(items[index]!.price.toString()),
              Text(items[index]!.name.length > 20
                  ? items[index]!.name.substring(0, 20)
                  : items[index]!.name)
            ],
          ),
        ),
        itemCount: items!.length,
      ),
    );
