import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:motionhack_9/features/profile/components/overview.dart';
import 'package:motionhack_9/features/profile/components/schedule.dart';

class profileFeature extends StatefulWidget {
  const profileFeature({super.key});

  @override
  State<profileFeature> createState() => _profileFeatureState();
}

class _profileFeatureState extends State<profileFeature> {
  final List<String> images = [
    'https://res.cloudinary.com/dazw9kv2d/image/upload/v1677240552/Group_12875_ohpz9w.png',
    'https://res.cloudinary.com/dazw9kv2d/image/upload/v1677254514/jerome_r4koyf.png',
    'https://picsum.photos/300/200?image=2',
  ];
  final List<Widget> _screens = [Schedule(), Overview()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            iconSize: 25,
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: [
              CarouselSlider(
                items: images.map((image) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1500),
                  viewportFraction: 0.89,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'Jerome Polin',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Content Creator',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 133, 133, 133)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'YouTuber dan Content Creator dengan subscriber mencapai 10 juta. Channel youtube yang biasa dikenal Nihongo Mantappu sering membagikan kehidupan pribadi sebagai mahasiswa Indonesia di Negara Jepang bersama Waseda Boys',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Container(
                      width: 250,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Text(
                          "Request Sesuatu",
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Text(
                        'Schedule',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: _currentIndex == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color:
                              _currentIndex == 0 ? Colors.blue : Colors.black,
                          decoration: _currentIndex == 0
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: _currentIndex == 1
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color:
                              _currentIndex == 1 ? Colors.blue : Colors.black,
                          decoration: _currentIndex == 1
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              Expanded(
                child: _screens[_currentIndex],
              )
            ])));
  }
}
