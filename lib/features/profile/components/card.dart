import 'package:flutter/material.dart';


class ScheduleCard extends StatefulWidget {
  const ScheduleCard({super.key});

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.album),
          title: Text('Flutter Card'),
          subtitle: Text('A simple card example'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'This is a simple card widget in Flutter, with an icon, title, and subtitle.',
            textAlign: TextAlign.center,
          ),
        ),
      ],
      ),
    );
  }
}