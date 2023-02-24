import 'package:flutter/material.dart';
import 'package:motionhack_9/features/foryoupage/components/creatorOfTheWeek.dart';
import 'package:motionhack_9/features/foryoupage/components/jadwalCard.dart';
import 'package:motionhack_9/features/foryoupage/components/yangSeru.dart';

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: creatorOfTheWeek(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jadwal Private Hari Ini',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('Lihat Semua',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const jadwalCard(),
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Yang Seru di Obrol',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text('Lihat Semua',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const YangSeru(),
              ],
            )),
            
          ],
          
        ),
      ),
    );
  }
}
