
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
          'https://th.bing.com/th/id/OIP.8MtMjL2OcvoxkSvLBQSZDAHaE7?pid=ImgDet&w=196&h=130&c=7&dpr=1.5',
           'https://th.bing.com/th/id/OIP.TEOIfQhAGtc3eOdRZV7t9wAAAA?w=206&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
           'https://th.bing.com/th/id/OIP.Bmrctb9Dl7ktUE2DL4zviAHaFj?pid=ImgDet&w=196&h=147&c=7&dpr=1.5',
          ].map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.network(
                    item.toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}