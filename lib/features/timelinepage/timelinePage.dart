import 'package:flutter/material.dart';
import 'package:motionhack_9/features/timelinepage/components/timelinePost.dart';

class timelinePage extends StatefulWidget {
  const timelinePage({super.key});

  @override
  State<timelinePage> createState() => _timelinePageState();
}

class _timelinePageState extends State<timelinePage> {

  List<Map<String, dynamic>> posts = [
    {
      'creator': 'Jerome Polin',
      'description': 'lagi di Jepang',
      'image': 'assets/jerometimeline.jpg',
      'blur': false,
    },
    {
      'creator': 'Urrofi',
      'description': 'Ngonten terus',
      'image': 'assets/urrofi.png',
      'blur': false,
    },
    {
      'creator': 'Kirana Pratiwi',
      'description': 'kuliah gais!',
      'image': 'assets/kiranaputri.png',
      'blur': true,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: posts.map((item) {
            return timelinePost(
              creator: item['creator'],
              description: item['description'],
              image: item['image'],
              blur: item['blur']
            );
          }).toList(),
        ),
      )
    );
  }
}
