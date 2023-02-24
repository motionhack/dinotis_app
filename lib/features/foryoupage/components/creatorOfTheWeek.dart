import 'package:flutter/material.dart';

class creatorOfTheWeek extends StatelessWidget {
  const creatorOfTheWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(children: [
            const Text(
              'Creator Of The Week',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ]),
        ),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://picsum.photos/300/200',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    color: Colors.black.withOpacity(0.2),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Text(
                            'Title',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]))))
          ]),
        ),
      ],
    );
  }
}
