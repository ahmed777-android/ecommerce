import 'package:flutter/material.dart';

Widget itemBuilderForSearch({
  required String image,
  required String name,
  required var price,
  required var oldPrice,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: Material(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(top: 5, left: 15, bottom: 5, right: 20),
        child: Row(
          children: [
            Image.network(
              image,
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.length > 20 ? name.substring(0, 20) : name,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: price.toString() + " L.E" + '\n',
                        style: const TextStyle(
                          color: Color(0xFF242020),
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: oldPrice == price
                            ? ""
                            :oldPrice==null?"":oldPrice.toString() + " L.E",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff707070),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
