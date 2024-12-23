import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        elevation: 4.0,
        backgroundColor: Colors.grey[300], // แถบสีอ่อนที่ AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('https://publish-p47754-e237306.adobeaemcloud.com/adobe/dynamicmedia/deliver/dm-aid--914bcfe0-f610-4610-a77e-6ea53c53f630/_330603286208.app.webp?preferwebp=true&width=312'),
                  ),
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'Kawi Puekwisut Tik',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87), // ใช้สีเทาเข้ม
                  ),
                ),
                const Divider(height: 30, thickness: 1),
                const Text(
                  'Personal Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey), // สีเทาอ่อน
                ),
                const SizedBox(height: 8),
                buildInfoRow('Hobby', 'Cool'),
                buildInfoRow('Food', 'pad ka praow'),
                buildInfoRow('Birthplace', 'Phitsanulok'),
                const Divider(height: 30, thickness: 1),
                const Text(
                  'Education',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey), // สีเทาอ่อน
                ),
                const SizedBox(height: 8),
                buildEducationItem('Elementary', 'Matoom school', 2016),
                buildEducationItem('Primary', 'Bankarng school', 2019),
                buildEducationItem('High School', 'Phitsanulok pittayakom', 2022),
                buildEducationItem('Undergrad', 'Naresuan University', 2025),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)), // สีเทาอ่อน
          Text(value, style: const TextStyle(color: Colors.black87)), // สีเทาเข้ม
        ],
      ),
    );
  }

  Widget buildEducationItem(String level, String name, int year) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$level: $name', style: const TextStyle(color: Colors.black87)), // สีเทาเข้ม
          Text('Year: $year', style: const TextStyle(color: Colors.grey)), // สีเทาอ่อน
        ],
      ),
    );
  }
}
