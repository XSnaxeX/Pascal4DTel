import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String> images =  const[
  "lib/assets/img1.png",
  "lib/assets/img2.png",
  "lib/assets/img3.png",
  "lib/assets/img4.png",
];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
  itemCount: images.length,
  options: CarouselOptions(
    height: 400.0,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 4),
  ),
  itemBuilder: (context, index, realIndex) {
    return Container(
      child: Image.asset(images[index], fit: BoxFit.cover),

    )
  },
)
    )
  },
      ),
    );
  }
}