import 'package:flutter/material.dart';

class Course {
  final String courseID;
  final String courseCode;
  final String courseTitle;
  final String lectureLink;
  final String tutorialLink;
  final Color color;

  Course({
    this.courseCode,
    this.courseID,
    this.courseTitle,
    this.lectureLink,
    this.tutorialLink,
    this.color,
  });
}
