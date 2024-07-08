import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Project(
                title: 'Project 1',
                imageUrl: 'project1.jpg',
                description: 'Description of Project 1.',
              ),
              SizedBox(height: 24.0),
              Project(
                title: 'Project 2',
                imageUrl: 'project2.jpg',
                description: 'Description of Project 2.',
              ),
              SizedBox(height: 24.0),
              Project(
                title: 'Project 3',
                imageUrl: 'project3.jpg',
                description: 'Description of Project 3.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Project extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const Project({super.key, 
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement action when project is clicked
        if (kDebugMode) {
          print('You clicked on $title');
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          const SizedBox(height: 12.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(description),
        ],
      ),
    );
  }
}
