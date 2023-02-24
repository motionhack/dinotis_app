import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class jadwalCard extends StatefulWidget {
  const jadwalCard({super.key});

  @override
  State<jadwalCard> createState() => _jadwalCardState();
}

class _jadwalCardState extends State<jadwalCard> {
  List creators = [];

  Future<void> getCreators() async {
    final response = await http
        .get(Uri.parse('https://api.hackathon.dinotis.com/v1/creators'));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      setState(() {
        creators = body['creators'];
      });
      print(creators);
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getCreators();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: creators.length,
            itemBuilder: (context, index) {
              final creator = creators[index];
              final profession = creator['professions'][0]['name'];
              final image = creator['profilePhoto'];
              return Container( 
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2.0,
                          blurRadius: 5.0),
                    ]),
                margin: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(                                                   
                              creator['name'],
                              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)
                              ),                            
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 2.0, bottom: 2.0),
                              child: Text(
                                profession,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                                maxLines: 1,
                              ),
                            ),
                            const SizedBox(height: 4,),
                            Row(
                              children: [
                                Icon(
                                  color: Colors.blue,
                                  size: 20.0,
                                  Icons.calendar_month),
                                  const SizedBox(width: 2,),
                                Text(
                                  '23 Februari 2023',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black54),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4,),
                            Row(
                              children: [
                                Icon(
                                  color: Colors.blue,
                                  size: 20.0,
                                  Icons.timer),
                                  const SizedBox(width: 2,),
                                Text(
                                  '14:00',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black54),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
