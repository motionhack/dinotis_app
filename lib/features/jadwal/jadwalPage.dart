import 'package:flutter/material.dart';
import 'package:motionhack_9/features/profile/components/overview.dart';
import 'package:motionhack_9/features/profile/components/schedule.dart';

class jadwalPage extends StatefulWidget {
  const jadwalPage({super.key});

  @override
  State<jadwalPage> createState() => _jadwalPageState();
}

class _jadwalPageState extends State<jadwalPage> {
  final List<Widget> _screens = [Schedule(), Overview()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Material(
                elevation: 3,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari Jadwal / Request Disini",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              color: Color.fromARGB(255, 195, 195, 195),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Text(
                        'Jadwal',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: _currentIndex == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: _currentIndex == 0 ? Colors.blue : Colors.black,
                          decoration: _currentIndex == 0
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Text(
                        'Request',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: _currentIndex == 1
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: _currentIndex == 1 ? Colors.blue : Colors.black,
                          decoration: _currentIndex == 1
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        )),
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
                Navigator.pushNamed(context, '/');
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
        ));
  }
}
