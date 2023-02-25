import 'package:flutter/material.dart';
import 'package:motionhack_9/features/foryoupage/components/creatorOfTheWeek.dart';
import 'package:motionhack_9/features/profile/components/card.dart';
import 'package:motionhack_9/features/profile/components/dropdown.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Group Call',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Dropdown()
              ],
            ),
          ),
          const SizedBox(height: 20),
          ScheduleCard(),
          ScheduleCard(),
          ScheduleCard(),
          ScheduleCard(),
          ScheduleCard(),

        ],
      )
    );

  }
}
