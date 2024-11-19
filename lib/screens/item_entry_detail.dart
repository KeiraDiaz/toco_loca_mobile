import 'package:flutter/material.dart';
import 'package:toco_loca/models/item_entry.dart';

class MoodEntryDetailPage extends StatelessWidget {
  final ItemEntry entry;

  MoodEntryDetailPage({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(entry.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${entry.name}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Description: ${entry.description}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Price: ${entry.price}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Items'),
            ),
          ],
        ),
      ),
    );
  }
}