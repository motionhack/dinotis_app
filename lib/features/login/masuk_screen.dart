import 'package:flutter/material.dart';
import 'package:motionhack_9/core/resources/colors.dart' as lib;
import 'package:motionhack_9/features/home/home_screen.dart';

class MasukScreen extends StatefulWidget {
  const MasukScreen({super.key});

  @override
  State<MasukScreen> createState() => _MasukScreenState();
}

class _MasukScreenState extends State<MasukScreen> {
  TextEditingController _nomorHp = TextEditingController();
  TextEditingController _kataSandi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Masuk',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: lib.Colors.text),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Silahkan masuk dengan nomor Hp-mu',
                style: TextStyle(fontSize: 15, color: lib.Colors.disableText),
              ),
              Text(
                'yang sudah terdaftar',
                style: TextStyle(fontSize: 15, color: lib.Colors.disableText),
              ),
            ]),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Nomor HP',
                style: TextStyle(
                    fontSize: 16,
                    color: lib.Colors.text,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Nomor HP',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: _nomorHp,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kata Sandi',
                style: TextStyle(
                    fontSize: 16,
                    color: lib.Colors.text,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: 'Kata Sandi',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: _kataSandi,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lib.Colors.secondary,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // radius
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Text(
                  'atau',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: lib.Colors.disable),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/icons/google.png')),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign In With Google',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Belum punya akun?'),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Daftar Sekarang!'))
                  ],
                ),
              ]),
            ]),
          )
        ]),
      ]),
    );
  }
}
