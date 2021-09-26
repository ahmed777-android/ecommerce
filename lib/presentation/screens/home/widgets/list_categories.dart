import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/models/categories.dart';
import 'package:flutter/material.dart';

Widget ListCategories({List<Categories?>? data}) => SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, categoriesScreen,
                arguments: data?[index]?.id);
          },
          child: Container(
            height: 145,
            width: 145,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  image: data?[index]?.image ??
                      "https://student.valuxapps.com/storage/uploads/categories/16301438353uCFh.29118.jpg",
                  placeholder: 'assets/images/loading.gif',
                ),
                Center(
                    child: Text(
                  data?[index]?.name?.substring(0, 5) ?? " false",
                  style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                )),
              ],
            ),
          ),
        ),
        itemCount: data?.length,
      ),
    );
