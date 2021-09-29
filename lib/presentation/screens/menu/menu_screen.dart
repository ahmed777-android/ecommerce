import 'package:ecommercev2/constant/strings.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, homeScreen);
              },
              child: const Text(
                'Home',
                style: TextStyle(color: Color(0xff707070), fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, profileScreen);
              },
              child: const Text(
                'Profile',
                style: TextStyle(color: Color(0xff707070), fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, cartScreen);
              },
              child: const Text(
                'My Orders',
                style: TextStyle(color: Color(0xff707070), fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, aboutScreen);
              },
              child: const Text(
                'About Us',
                style: TextStyle(color: Color(0xff707070), fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black45),
              color: Colors.white),
          child: const Center(
            child: Text(
              'x',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
