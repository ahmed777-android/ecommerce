import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Profile',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SizedBox(height: 40),
            Text('Name',
                style: TextStyle(color: Color(0xff707070), fontSize: 16)),
            SizedBox(height: 5),
            Text('lstiak mohmud Remon',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(height: 20),
            Text('Adress lane',
                style: TextStyle(color: Color(0xff707070), fontSize: 16)),
            SizedBox(height: 5),
            Text('Shewrapara 958',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(height: 20),
            Text('City',
                style: TextStyle(color: Color(0xff707070), fontSize: 16)),
            SizedBox(height: 5),
            Text('Dhaka', style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(height: 20),
            Text('Gender',
                style: TextStyle(color: Color(0xff707070), fontSize: 16)),
            SizedBox(height: 5),
            Text('Male', style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(height: 20),
            Text('Email',
                style: TextStyle(color: Color(0xff707070), fontSize: 16)),
            SizedBox(height: 5),
            Text('Helloistaiak@gmail.com',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(height: 20),
            Text('Phone Number',
                style: TextStyle(color: Color(0xff707070), fontSize: 16)),
            SizedBox(height: 5),
            Text('+8801754486711',
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
