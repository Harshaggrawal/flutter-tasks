import 'package:flutter/material.dart';
import 'package:flutter_application_1/note_copy/screens/notes_page.dart';

class MyNotesDbApp extends StatelessWidget {
const MyNotesDbApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
themeMode: ThemeMode.dark,
theme: ThemeData(
primaryColor: Colors.black,
scaffoldBackgroundColor: Colors.blueGrey.shade900,
appBarTheme: const AppBarTheme(
backgroundColor: Colors.transparent, elevation: 0),
),
home: const NotesPage());
}
}
Future main() async {
runApp(const MyNotesDbApp());
}

