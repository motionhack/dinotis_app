import 'package:flutter/material.dart';
import 'package:motionhack_9/core/resources/colors.dart' as lib;
import 'package:motionhack_9/features/login/masuk_screen.dart';
import 'package:motionhack_9/features/home/home_screen.dart';

class DaftarScreen extends StatefulWidget {
  const DaftarScreen({super.key});

  @override
  State<DaftarScreen> createState() => _DaftarScreenState();
}

class _DaftarScreenState extends State<DaftarScreen> {
  TextEditingController _namaLengkap = TextEditingController();
  TextEditingController _nomorHp = TextEditingController();
  TextEditingController _kataSandi = TextEditingController();
  TextEditingController _ulangiKataSandi = TextEditingController();
  Color _buttonColor = lib.Colors.disable;
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
                'Daftar',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: lib.Colors.text),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Silahkan masukkan data diri kamu',
                style: TextStyle(fontSize: 15, color: lib.Colors.disableText),
              ),
              Text(
                'dengan benar',
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
                'Nama Lengkap',
                style: TextStyle(
                    fontSize: 16,
                    color: lib.Colors.text,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _namaLengkap,
                decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
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
                height: 20,
              ),
              Text(
                'Ulangi Kata Snadi',
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
                    hintText: 'Ulangi Kata Sandi',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: _ulangiKataSandi,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    'Daftar',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MasukScreen()));
                      },
                      child: Text('Masuk Sekarang'))
                ],
              )
            ]),
          )
        ]),
      ]),
    );
  }
}
