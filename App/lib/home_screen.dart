import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'First App',
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_important,
            ),
            onPressed: ()
            {
              print('Notification clicked');
            },
          ),
          IconButton (
            icon: const Icon(
              Icons.search,
            ),
            onPressed: ()
            {
              print('Search');
            },
          ),

        ],
      ),
      body: const Column(
        children:
          [
            Image(
              image: NetworkImage('https://i.pinimg.com/736x/90/40/03/9040034f5d635f46a4fb92128964fcca.jpg'),
            ),
          ],
      ),
    );
  }
}
