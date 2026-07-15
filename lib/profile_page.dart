import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

@override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 8.0, // ใส่เงาด้านหลังการ์ดทั้งหมด
        borderRadius: BorderRadius.circular(35.0), // ขอบโค้งมนของการ์ด
        shadowColor: Colors.black.withValues(alpha: 0.1), // สีของเงา
        child: IntrinsicHeight( // ให้ Container สูงตามเนื้อหา
          child: Container(
            width: 320.0, // ความกว้างของการ์ด
            // พื้นหลังไล่ระดับสีจากเหลืองเข้มด้านล่างขึ้นไปเหลืองอ่อนด้านบน
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.amber.shade200.withValues(alpha: 0.8), // เหลืองเข้มขึ้นด้านล่าง (ตามรูป)
                  Colors.yellow.shade100.withValues(alpha: 0.5), // เหลืองอ่อนด้านบน
                ],
                stops: [0.0, 0.7], // กำหนดจุดเริ่มและจุดเปลี่ยนสี
              ),
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 1. รูปภาพโปรไฟล์หน้ายิ้ม
                const SizedBox(height: 30.0), // ช่องว่างด้านบน
                Material(
                  elevation: 6.0, // เงาสำหรับรูปภาพ
                  shape: const CircleBorder(), // กำหนดให้รูปเป็นวงกลม
                  shadowColor: Colors.black.withValues(alpha: 0.15),
                  child: Container(
                    padding: const EdgeInsets.all(5.0), // ขอบสีขาวรอบรูป
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 50.0, // ขนาดรัศมีรูป
                      backgroundColor: Colors.amber, // สีพื้นหลังหน้ายิ้ม
                      // ใช้ NetworkImage จาก URL ของคุณ
                      backgroundImage: const NetworkImage('https://i.pinimg.com/1200x/92/bf/e2/92bfe2947696cf8ae9f6f4d13b9d7fb1.jpg'),
                    ),
                  ),
                ),

                const SizedBox(height: 25.0), // ช่องว่าง

                // 2. ชื่อ John Doe
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w900, // ตัวหนาขึ้น
                      color: Color(0xFF1E518E), // สีน้ำเงินเข้มตามรูป
                    ),
                  ),
                ),

                const SizedBox(height: 15.0), // ช่องว่าง

                // 3. อีเมล
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text(
                    'john.doe@example.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0, // ขนาดเล็กลงนิดหน่อย
                      color: Colors.black87, // สีดำจาง
                    ),
                  ),
                ),

                const SizedBox(height: 25.0), // ช่องว่าง

                // 4. รูปภาพบรรยากาศพระอาทิตย์ขึ้น
                Container(
                  width: 260.0, // ความกว้างรูปบรรยากาศ
                  height: 180.0, // ความสูงรูปบรรยากาศ
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.pink, // พื้นหลังสีชมพู (สำหรับโหลดรูป)
                    image: DecorationImage(
                      // ใช้ NetworkImage จาก URL ของคุณ
                      image: const NetworkImage('https://i.pinimg.com/1200x/55/5d/3b/555d3bb8f0e966e5c1cc6ad189532163.jpg'),
                      fit: BoxFit.cover, // ให้ภาพขยายเต็ม Container
                    ),
                  ),
                ),

                const SizedBox(height: 35.0), // ช่องว่างด้านล่างสุด
              ],
            ),
          ),
        ),
      ),
    );
  }
}