import 'package:flutter/material.dart';

class MyProductInfo extends StatelessWidget {
  const MyProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: const Color(
          0xFFffffff,
        ),
        title: const Text(
          'PRODUCT DETAILS',
          style: TextStyle(
            color: Color(
              0xFF2d2d2d,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Image(
            image: NetworkImage(
              'https://www.net-a-porter.com/variants/images/42247633208916975/in/w358_q60.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
