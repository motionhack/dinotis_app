import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:ui';

class timelinePost extends StatefulWidget {
  final String creator;
  final String description;
  final String image;
  final bool blur;
  const timelinePost({
    required this.creator,
    required this.description,
    required this.image,
    required this.blur,
  });

  @override
  State<timelinePost> createState() => _timelinePostState();
}

class _timelinePostState extends State<timelinePost> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(widget.image),
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
                    widget.creator,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.description,
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
        child: widget.blur
            ? Stack(children: [
                Image.asset(
                  widget.image,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Text(
                      'Upgrade ke Premium untuk melihat dan beri reaksi!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 15,
                    right: 20,
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Image.asset(
                        'assets/reaction.png',
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    )),
              ])
            : Stack(children: [
                Image.asset(
                  widget.image,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 15,
                    right: 20,
                    child: InkWell(
                      onTap: () {

                      },
                      child: Image.asset(
                        'assets/reaction.png',
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    )),
              ]),
      ),
    ]);
  }
}
