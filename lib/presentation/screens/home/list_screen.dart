import 'package:ecommercev2/constant/strings.dart';
import 'package:flutter/material.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({Key? key}) : super(key: key);
  // final List<Item?>? items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          width: 150,
          height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, detailScreen,arguments:  listItems![index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amberAccent,
                  ),
                  width: 200,
                  height: 230,
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    image: listItems![index]!.image,
                    placeholder: 'assets/images/loading.gif',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(listItems![index]!.price.toString()),
              Text(listItems![index]!.name.length > 20
                  ? listItems![index]!.name.substring(0, 20)
                  : listItems![index]!.name)
            ],
          ),
        ),
        itemCount: listItems!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        //shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }
}
