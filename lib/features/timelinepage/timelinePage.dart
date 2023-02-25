import 'package:flutter/material.dart';
import 'package:motionhack_9/features/timelinepage/components/timelinePost.dart';

class timelinePage extends StatefulWidget {
  const timelinePage({super.key});

  @override
  State<timelinePage> createState() => _timelinePageState();
}

class _timelinePageState extends State<timelinePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            timelinePost(),
            timelinePost(),
            timelinePost(),
            timelinePost(),
          ],
        ),
      )
    );
  }
}
