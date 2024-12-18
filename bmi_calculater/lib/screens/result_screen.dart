import 'package:bmi_calculater/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  double bmi;

  ResultScreen({super.key, required this.bmi});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String bmiCategory = '';

  String bmiDescription = '';

  @override
  void initState() {
    final bmiResult = getBmiResult(widget.bmi);
    bmiCategory = bmiResult['category']!;
    bmiDescription = bmiResult['description']!;
  }

  Map<String, String> getBmiResult(double result) {
    if (result < 18.5) {
      return {
        "category": "UNDERWEIGHT",
        "description": "You are underweight."
    };
    }
    else if (result >= 18.5 && result <= 24.9) {
      return {
        "category": "NORMAL",
        "description": "You have a normal body weight."
      };
    }
    else if (result >= 25 && result <= 29.9) {
      return {
        "category": "OVERWEIGHT",
        "description": "You are overweight."
      };
    }
    else if (result >= 30 && result <= 34.9) {
      return {
        "category": "OBESE (Class 1)",
        "description": "You are in the obese category."
      };
    }
    else if (result >= 35 && result <= 39.9) {
      return {
        "category": "OBESE (Class 2)",
        "description": "You are in the severely obese category."
      };
    }
    else {
      return {
        "category": "SEVERELY OBESE (Class 3)",
        "description": "You are in the severely obese category."
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2135),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 10),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            padding: const EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF333244),
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 50,),
                  Text(
                    bmiCategory,
                    style: TextStyle(
                      fontSize: 25,
                      color: bmiCategory == 'NORMAL' ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 100,),
                  Text(
                    widget.bmi.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 100,),
                  Text(
                    bmiDescription,
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Good luck!',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 85,),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return HomeScreen();
                  }));
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 97,
              color: const Color(0xFFE83D67),
              child: const Text(
                'RE-CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
