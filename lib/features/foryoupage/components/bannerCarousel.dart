import 'package:flutter/material.dart';

class bannerCarousel extends StatelessWidget {
  const bannerCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150,
          child: Image.network(
            'https://res.cloudinary.com/dazw9kv2d/image/upload/v1677246264/banner_yigu16.png',
            fit: BoxFit.fitWidth,
          )),
    );
  }
}
