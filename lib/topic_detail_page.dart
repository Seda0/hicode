import 'package:flutter/material.dart';

class TopicDetailPage extends StatelessWidget {
  final String title;
  final String content;

  const TopicDetailPage({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 244, 103, 103),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( 
          child: SelectableText(
            content,
            style: const TextStyle(fontSize: 18, height: 1.5), 
          ),
        ),
      ),
    );
  }
}
