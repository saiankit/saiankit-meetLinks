import 'dart:html';
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:studySaiAnkit/notesData.dart';

import 'package:studySaiAnkit/notesPage.dart';

class Notes extends StatefulWidget {
  final String courseID;
  final String courseCode;
  final String courseTitle;
  final Color color;

  Notes({
    this.color,
    this.courseCode,
    this.courseID,
    this.courseTitle,
  });
  @override
  _NotesState createState() => _NotesState();
}

int findNotesLength(String courseCode, String courseID) {
  var list = notesList
      .where((e) => e.courseCode == courseCode)
      .where((e) => e.courseID == courseID);
  return list.length;
}

List<Note> getNotes(String courseCode, String courseID) {
  var list = notesList
      .where((e) => e.courseCode == courseCode)
      .where((e) => e.courseID == courseID);
  return list.toList();
}

class _NotesState extends State<Notes> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.courseTitle),
      ),
      body: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 580) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      findNotesLength(widget.courseCode, widget.courseID),
                  itemBuilder: (context, index) {
                    List<Note> list =
                        getNotes(widget.courseCode, widget.courseID);
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return NotesPage();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35.0, vertical: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: widget.color,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    list[index].noteTitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      findNotesLength(widget.courseCode, widget.courseID),
                  itemBuilder: (context, index) {
                    List<Note> list =
                        getNotes(widget.courseCode, widget.courseID);
                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.color,
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    list[index].noteTitle,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
