import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF7190C9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 124,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/image.jpg'),
              ),
            ),
            const Text(
              'Alaa Sayed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 5,),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Color(0xFFadd8e6),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color(0xFFadd8e6),
              indent: 20,
              endIndent: 20,
            ),
            // SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(
                      Icons.phone,
                      size: 35,
                      color: const Color(0xFF7190C9),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      '(+20) 155 529 1505',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(
                      Icons.mail,
                      size: 35,
                      color: const Color(0xFF7190C9),
                    ),
                    SizedBox(width: 30,),
                    Text(
                        'alaa02.sayed02@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
