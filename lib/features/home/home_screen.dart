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
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff221C7A),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Color(0xff221C7A),
            ),
            label: 'forum',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.task,
              color: Color(0xff221C7A),
            ),
            label: 'Jadwal',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff221C7A),
            ),
            label: 'MyProfile',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 25.0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/forum');
              break;
            case 2:
              Navigator.pushNamed(context, '/jadwal');
              break;
            case 3:
              Navigator.pushNamed(context, '/myprofile');
              break;
          }
        },
      ),
    );
  }
}
