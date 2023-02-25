import 'package:flutter/material.dart';

class timelinePost extends StatefulWidget {
  const timelinePost({super.key});

  @override
  State<timelinePost> createState() => _timelinePostState();
}

class _timelinePostState extends State<timelinePost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/jerometimeline.jpg'),
                  backgroundColor: Colors.grey[300],
                  // add a white border with thickness 2 around the circle
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jerome Polin",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lagi di Jepang!',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '10 menit yang lalu',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
              20), // sets the border radius of the rectangle
          child: Image.asset(
            'assets/jerometimeline.jpg',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
