import 'package:ecommercev2/constant/strings.dart';
import 'package:ecommercev2/presentation/widgets/graidienbuttom.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  // final List<Item?>? items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Orders',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
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
          height: 283,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, detailScreen,
                      arguments: listItems![index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amberAccent,
                  ),
                  width: 200,
                  height: 200,
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    image: listItems![index]!.image,
                    placeholder: 'assets/images/loading.gif',
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(listItems![index]!.price.toString()),
              const SizedBox(height: 5),
              Text(listItems![index]!.name.length > 20
                  ? listItems![index]!.name.substring(0, 20)
                  : listItems![index]!.name),
              const SizedBox(height: 5),
              Center(
                child: InkwellGradienButton(
                  onPressed: () {},
                  height: 30,
                  width: 100,
                  gradient: const LinearGradient(
                    colors: <Color>[Color(0xff667EEA), Color(0xff64B6FF)],
                  ),
                  child: const Text(
                    'Order Again',
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
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
