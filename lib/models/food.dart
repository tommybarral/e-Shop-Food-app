
import 'package:flutter/material.dart';

class Food {
  final String title;
  final String imageUrl;
  final int stars;
  final int note;
  final int comments;
  final String difficulty;
  final int location;
  final String timer;

  Food({
    required this.title,
    required this.imageUrl,
    required this.stars,
    required this.note,
    required this.comments,
    required this.difficulty,
    required this.location,
    required this.timer,
  });
}
