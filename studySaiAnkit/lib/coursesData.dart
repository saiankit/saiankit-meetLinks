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

List<Course> courses = [
  Course(
    courseCode: 'ECE',
    courseID: 'F212',
    color: Colors.blueAccent,
    courseTitle: 'Electromagnetic Theory',
    lectureLink: 'http://meet.google.com/rya-wahz-scc',
    tutorialLink: '',
  ),
  Course(
    color: Colors.deepOrangeAccent,
    courseCode: 'ECE',
    courseID: 'F214',
    courseTitle: 'Electronic Devices',
    lectureLink: '',
    tutorialLink: '',
  ),
  Course(
    color: Colors.deepPurpleAccent,
    courseCode: 'ECE',
    courseID: 'F215',
    courseTitle: 'Digital Design',
    lectureLink: '',
    tutorialLink: '',
  ),
  Course(
    color: Colors.pinkAccent,
    courseCode: 'ECE',
    courseID: 'F242',
    courseTitle: 'Signals and Systems',
    lectureLink: '',
    tutorialLink: '',
  ),
  Course(
    color: Colors.redAccent,
    courseCode: 'ECE',
    courseID: 'F243',
    courseTitle: 'Control Systems',
    lectureLink: '',
    tutorialLink: '',
  ),
  Course(
    color: Colors.blueAccent,
    courseCode: 'MATH',
    courseID: 'F211',
    courseTitle: 'Mathematics III',
    lectureLink: '',
    tutorialLink: '',
  ),
  Course(
    color: Colors.green,
    courseCode: 'GS',
    courseID: 'F233',
    courseTitle: 'Public Policy',
    lectureLink: '',
    tutorialLink: '',
  ),
  Course(
    color: Colors.teal,
    courseCode: 'HSS',
    courseID: 'F334',
    courseTitle: 'Srimad Bhagavad Gita',
    lectureLink: '',
    tutorialLink: '',
  ),
];
