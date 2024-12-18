import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';

import '../components/list_item.dart';
import '../components/phrase_item.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Chichioya',
      enName: 'black',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      jpName: 'Hahaoya',
      enName: 'brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      jpName: 'Musume',
      enName: 'dusty yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      jpName: 'Ojisan',
      enName: 'grey',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      jpName: 'Sobo',
      enName: 'green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      jpName: 'Nisan',
      enName: 'red',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      jpName: 'Ane',
      enName: 'white',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      jpName: 'Musuko',
      enName: 'yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color:  const Color(0xff50adc7),
              item: phrases[index],
            );
          }),
    );
  }
}
