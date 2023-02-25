import 'package:flutter/material.dart';
import 'package:motionhack_9/features/foryoupage/components/yangSeru.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          title:
              Text('Search In Hiburan', style: TextStyle(color: Colors.black)),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cari Kreatormu di sini",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  prefixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: null,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffC9DFFC),
                      Color.fromARGB(146, 149, 100, 187),
                      Color(0xffEB7D18),
                      Color(0xffD5E5FB),
                    ],
                    stops: [0.20, 0.60, 0.80, 1.0],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Trending In Hiburan', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const YangSeru()
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
