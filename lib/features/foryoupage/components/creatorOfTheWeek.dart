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
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://res.cloudinary.com/dazw9kv2d/image/upload/v1677240552/Group_12875_ohpz9w.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 350,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    color: Colors.white12.withOpacity(0.4),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Text(
                            'Jerome Polin',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '12 Group Call',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '5 Private Call',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '6j Stream',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add your button press logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "👋",
                                  style: TextStyle(fontSize: 24),
                                ),
                                Text(
                                  "Get in touch ",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ]))))
          ]),
        ),
      ],
    );
  }
}
