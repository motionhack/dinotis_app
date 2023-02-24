import 'package:flutter/material.dart';
import 'package:motionhack_9/features/foryoupage/components/creatorOfTheWeek.dart';
import 'package:motionhack_9/features/foryoupage/components/jadwalCard.dart';

class forYouPage extends StatefulWidget {
  const forYouPage({super.key});

  @override
  State<forYouPage> createState() => _forYouPageState();
}

class _forYouPageState extends State<forYouPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Container(
            child: creatorOfTheWeek(),
          ),
          const SizedBox(height: 20,),
          Container(
            child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Jadwal Private Hari Ini'),
                  Text('Lihat Semua')
                ],
              ),
              const SizedBox(height: 10,),
              const jadwalCard(),
            ],
          ))
        ],
      ),
    );
  }
}
