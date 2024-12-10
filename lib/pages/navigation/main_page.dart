import 'package:flutter/material.dart';
import 'package:muhammad_nabi/circle.dart';
import 'package:muhammad_nabi/pages/spuare.dart';

class MainPage extends StatelessWidget {
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
    'post 8',
    'post 9',
    'post 10',
    'post 11',
    'post 12',
    'post 13',
    'post 14',
    'post 15',
    'post 16',
    'post 17',
    'post 18',
    'post 19',
    'post 20',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
    'story 7',
    'story 8',
    'story 9',
    'story 10',
    'story 11',
    'story 12',
    'story 13',
    'story 14',
    'story 15',
    'story 16',
  ];

  MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // instagram stories
        Container(
          height: 150,
          child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircle(
                  child: _stories[index],
                );
              }),
        ),

        // instagram posts
        Expanded(
          child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _posts[index],
                );
              }),
        ),
      ],
    ));
  }
}
