import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            pagebanner(),
            pageheader(),
            Padding(
              padding: EdgeInsets.all(10),
              child: profile(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: cookingtimer(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: abstractborder(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: content(),
            ),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'วิธีทำ "ซี่โครงหมูบาร์บีคิวอบชีส" เมนูเด็กหอ ที่ทำได้ในหม้อหุงข้าว',
            style: GoogleFonts.amiko(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        Text(
          'ซี่โครงหมูบาร์บีคิวอบชีส” เมนูเริ่ด ๆ ที่ทำได้ง่าย ๆ เพียงมีหม้อหุงข้าว',
          style: GoogleFonts.amiko(
            fontSize: 16,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Widget profile() {
    return Column(
      children: [
        CircleAvatar(
          radius: 65,
          backgroundColor: Colors.grey.withOpacity(0.5),
          child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1448696882746695683/Jp2_LEBL.jpg'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'วันที่ 17 ธ.ค. 2564  โดย เชฟกอร์ดอน',
            style: GoogleFonts.amiko(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget cookingtimer() {
    return new ConstrainedBox(
      constraints: new BoxConstraints(
        minHeight: 100.0,
        minWidth: double.infinity,
        maxHeight: 100.0,
        maxWidth: double.infinity,
      ),
      child: new DecoratedBox(
        decoration: new BoxDecoration(
            color: Colors.orange[200], borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: FaIcon(
                      Icons.timer,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'เวลาเตรียม',
                    style: GoogleFonts.amiko(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '10 นาที',
                    style: GoogleFonts.amiko(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: FaIcon(
                      Icons.restaurant,
                      color: Colors.orange[400],
                    ),
                  ),
                  Text(
                    'เวลาปรุง',
                    style: GoogleFonts.amiko(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '10 นาที',
                    style: GoogleFonts.amiko(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: FaIcon(
                      Icons.fireplace,
                      color: Colors.red[800],
                    ),
                  ),
                  Text(
                    'แคลอรี่ ',
                    style: GoogleFonts.amiko(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '300 kcal/เสริฟ',
                    style: GoogleFonts.amiko(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: FaIcon(
                      Icons.person,
                      color: Colors.green[300],
                    ),
                  ),
                  Text(
                    'สำหรับ',
                    style: GoogleFonts.amiko(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2 เสริฟ',
                    style: GoogleFonts.amiko(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget abstractborder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ),
        Container(
          child: Text(
            'เกริ่นสักหน่อย',
            style: GoogleFonts.amiko(
              textStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'เมื่อเพื่อน ๆ อยากจะทำอะไรกินที่พิเศษ แต่อยู่หอ จะอุปกรณ์ก็ไม่อำนวยเท่าไรใช่ไหมค่ะ วันนี้จะมาแนะนำเมนูที่ทำได้ง่าย เพียงแค่มีหม้อหุงข้าว ก็ทำได้นั่นก็คือ “ซี่โครงหมูบาร์บีคิวอบชีส” ที่ทำได้อยู่ที่ไหนก็ทำได้ ถ้าพร้อมแล้วล้างหม้อหุงข้าวแล้วเข้าครัวพร้อมกันเลยค่ะ',
          style: GoogleFonts.amiko(
            fontSize: 16,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset('images/porklibs_material.jpg'),
        ),
        receipt(),
        tutorial(),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset('images/porklibs_final.jpg'),
        ),
        Text(
          'เรียบร้อยแล้วสำหรับ “ซี่โครงหมูบาร์บีคิวอบชีส” เป็นเมนูเด็กหอที่ทำง่าย ๆ เพียงแค่มีหม้อหุงข้าวชาร์ปแคนดี้ รุ่น KSH-Q03 แค่นี้เพื่อน ๆ ก็สามารถสร้างสรรค์เมนูที่ทำง่ายสำหรับ 1-2 คน ด้วยหม้อหุงข้าวใบจิ๋วขนาด 0.3 ลิตร ขนาดเล็กกะทัดรัด เก็บง่ายไม่เปลืองพื้นที่อีกด้วย',
          style: GoogleFonts.amiko(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          'ที่มา: https://www.wongnai.com/recipes/pork-ribs-in-bbq-sauce',
          style: GoogleFonts.amiko(
            fontSize: 16,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Widget receipt() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'วัตถุดิบ',
          style: GoogleFonts.amiko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '1. ซี่โครงหมู 300 กรัม',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '2. ซอสบาร์บีคิว 200 กรัม',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '3. ชีส 100 กรัม',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '4. ออริกาโน่แห้ง 2 ช้อน',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '5. ใบไทม์แห้ง 2 ช้อนโต๊ะ',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '6. น้ำสะอาด 250 มิลลิลิตร',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            '7. น้ำมัน สำหรับทอด',
            style: GoogleFonts.amiko(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget tutorial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'วิธีทำ',
          style: GoogleFonts.amiko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          'STEP 1 : ทอดหมู',
          style: GoogleFonts.amiko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' นำน้ำมันลงหม้อหุงข้าวชาร์ปแคนดี้ รุ่น KSH-Q03 รอให้น้ำมันร้อน',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' นำซี่โครงหมูลงทอดพอขึ้นสีทั้ง 4 ด้าน',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Text(
          'STEP 2 : ตุ๋น',
          style: GoogleFonts.amiko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' นำซอสบาร์บีคิวเทลงหม้อหุงข้าวชาร์ปแคนดี้ รุ่น KSH-Q03',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' ใส่ใบไทม์ และ ออริกาโน่ ลงไป',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' เติมน้ำสะอาดให้พอท่วมซี่โครงหมู ตุ๋นประมาณ 40 นาที (หมั่นคนเรื่อย ๆ )',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Text(
          'STEP 3 : ละลายชีสสส !',
          style: GoogleFonts.amiko(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' นำชีสใส่หม้อ แล้วปิดฝา รอละลายซักครู่ ',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      Icons.circle,
                      color: Colors.black,
                      size: 5,
                    ),
                    Flexible(
                      child: Text(
                        ' เรียบร้อยแล้ว แค่นี้ก็พร้อมฟินกับ “ซี่โครงหมูบาร์บีคิวอบชีส” ยืด ๆ ฟิน ๆ',
                        style: GoogleFonts.amiko(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
