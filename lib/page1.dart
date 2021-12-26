import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BBQ Pork Libs',
          style: GoogleFonts.amiko(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pagebanner(),
            pageheader(),
          ],
        ),
      ),
    );
  }

  Widget pagebanner() {
    return Container(
      child: Image.asset('images/porklibs_cover.jpg'),
    );
  }

  Widget pageheader() {
    return Text(
      'วิธีทำ "ซี่โครงหมูบาร์บีคิวอบชีส" เมนูเด็กหอ ที่ทำได้ในหม้อหุงข้าว',
      style: GoogleFonts.amiko(
        fontSize: 18,
        color: Colors.black,
      ),
      textAlign: TextAlign.left,
    );
  }
}
