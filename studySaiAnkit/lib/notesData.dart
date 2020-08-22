class Note {
  final String courseCode;
  final String courseID;
  final String notesLink;
  final String noteTitle;
  Note({this.courseCode, this.courseID, this.notesLink, this.noteTitle});
}

List<Note> notesList = [
  Note(
      courseCode: 'ECE',
      courseID: 'F212',
      notesLink: 'index.html',
      noteTitle:
          'Introduction to Electromagnetic Theory and in this video let us see all the stuff and what not that are all going into the dustbin are going into our stomachs and not all are going out'),
  Note(
      courseCode: 'ECE',
      courseID: 'F212',
      notesLink: 'Hi2',
      noteTitle: 'Introduction to Electromagnetic Theory'),
  Note(
      courseCode: 'ECE',
      courseID: 'F212',
      notesLink: 'Hi3',
      noteTitle: 'Introduction to Electromagnetic Theory'),
  Note(
      courseCode: 'ECE',
      courseID: 'F214',
      notesLink: 'Bye',
      noteTitle: 'Introduction to Electromagnetic Theory'),
  Note(
      courseCode: 'ECE',
      courseID: 'F242',
      noteTitle: 'Introduction to Control Systems')
];
