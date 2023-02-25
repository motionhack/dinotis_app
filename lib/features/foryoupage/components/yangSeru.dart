import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class YangSeru extends StatefulWidget {
  const YangSeru({super.key});

  @override
  State<YangSeru> createState() => _YangSeruState();
}

class _YangSeruState extends State<YangSeru> {
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
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: creators.length,
          itemBuilder: (context, index) {
            final creator = creators[index];
            final profession = creator['professions'][0]['name'];
            final image = creator['profilePhoto'];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5.0,
                child: ClipRRect(
                  
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            creator['name'],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            profession,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
