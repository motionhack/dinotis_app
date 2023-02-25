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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/image 10.png'),
                Row(
                  children: [
                    Text('Lihat Benefit', style: TextStyle(color: Colors.blue),),
                    const SizedBox(width: 3,),
                    Icon(Icons.arrow_forward_ios_outlined, size: 13, color: Colors.blue,)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Training Bisnis UMKM', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),
              const SizedBox(height: 10,),
              Text('Group Video Call yang membahas tentang fundamental bisnis dan cara kerja UMKM')
            ]),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.amber[400],
                ),
              const SizedBox(width: 5,),
              Text('Saturday, 25 February 2023')
            ],
          ),
           Row(
            children: [
              Icon(
                Icons.timelapse_outlined,
                color: Colors.amber[400],
                ),
              const SizedBox(width: 5,),
              Text('22.00 - 22.45 WIB')
            ],
          ),
           Row(
            children: [
              Icon(
                Icons.people,
                color: Colors.amber[400],
                ),
              const SizedBox(width: 5,),
              Text('25/50 Participant')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: (){}, child: Container(
                child: Text('Book'),
              )),
            ],
          )
          
           
        ],
        ),
      ),
    );
  }
}