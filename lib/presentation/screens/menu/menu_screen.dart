import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('menu'),
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
