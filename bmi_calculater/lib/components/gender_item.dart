import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({super.key, required this.image, required this.gender});
  final String image;
  final String gender;
  // bool isClicked = false;
  // Color color = const Color(0xFF24263B);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: const Color(0xFF24263B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        onTap: () {
          setState() {
            // isClicked = true;
            // color = Color(0xFF333244);
          }
        },
        child: Column(
          children: [
            Image.asset(
              image,
              width: 70,
              height: 70,
            ),
            const SizedBox(height: 10,),
            Text(
              gender.toUpperCase(),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
