import 'package:flutter/material.dart';
import 'package:motionhack_9/features/foryoupage/forYouPage.dart';
import 'package:motionhack_9/features/searchpage/searchPage.dart';
import 'package:motionhack_9/features/timelinepage/timelinePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// test
class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [forYouPage(), timelinePage()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'For You',
                    style: TextStyle(
                      color: _currentIndex == 0 ? Colors.black : Colors.grey,
                    ),
                  ),
                  if (_currentIndex == 0)
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      height: 2,
                      width: 20,
                      color: Colors.blue,
                    ),
                ],
              ),
            ),
            SizedBox(width: 20.0), // Add some spacing between the buttons
            TextButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Timeline',
                    style: TextStyle(
                      color: _currentIndex == 1 ? Colors.black : Colors.grey,
                    ),
                  ),
                  if (_currentIndex == 1)
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      height: 2,
                      width: 20,
                      color: Colors.blue,
                    ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => searchPage()),
                );
              },
              color: _currentIndex != 2 ? Colors.grey : Colors.black,
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
