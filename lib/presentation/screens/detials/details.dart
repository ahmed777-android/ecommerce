import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/data/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_read_more_text/flutter_read_more_text.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.item}) : super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                child: Image.network(item.image),
                padding: EdgeInsets.only(bottom: 15),
              ),
              Text(
                item.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "\$${item.price}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "\$${item.oldPrice}",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text("Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              ReadMoreText(
                "${item.description}",
              ),
              SizedBox(
                height: 90,
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding:
                  EdgeInsets.only(bottom: 15, left: 40, right: 40, top: 15),
              decoration: BoxDecoration(
                color: Color(0xff667EEA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'ADD TO CART',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
