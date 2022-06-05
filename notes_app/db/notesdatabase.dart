
import 'package:flutter_application_1/note_copy/modals/Note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NotesDatabase{
  // creating the singleTon instance for the notesdatabase class
  static final NotesDatabase instance= NotesDatabase._init();
  NotesDatabase._init();

  // defines a adatabase private variable
  static Database? _database;

  // getter variable for accessing the _database private variable
  // returns the _database is already created else it will initialize the database and it will return the db
  Future<Database> get database async{
    if (_database != null) return _database!;

    _database = await _initializeDB('notes.db');
    return _database!;
  }

  // method to initialize the databse

  Future<Database> _initializeDB(String filepath) async{
    final dbPath = await getDatabasesPath();
    final path = join(
      dbPath, filepath
    );
    return await openDatabase(
      path,
      version: 1,
      onCreate:_createDB
    );
  }

  // method to create the table
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';

    await db.execute('''
CREATE TABLE $tableName(
  ${NoteFields.id} $idType,
  ${NoteFields.isImportant} $boolType,
  ${NoteFields.priorityLevel} $integerType,
  ${NoteFields.title} $textType,
  ${NoteFields.description} $textType,
  ${NoteFields.time} $textType
)

''');
  }

  // code for inserting the data/ record

  Future<Note> create(Note note) async{
    final db = await instance.database;
    // this method helps insert a amap of [value] into the specified  [table] and returns the id of the last inserted row.
    final id = await db.insert(tableName,note.toJson());
    return note.copy(id: id);
  }

  // code to read a single record
  Future<Note> readNote(int id) async{
    final db = await instance.database;
    // select * from tablename where id=?
    final maps = await db.query(tableName,
    columns: NoteFields.values,
    where: '${NoteFields.id}=?',
    whereArgs: [id]);

    if (maps.isNotEmpty){
      return Note.fromJson(maps.first);
    }else {
      throw Exception('Id $id not found');
    }
  }
  //? Code to Read All the Records
  Future<List<Note>> readAllNotes() async {
    final db = await instance.database;
    const orderBy = '${NoteFields.time} ASC';

    //final result = await db.rawQuery('SELECT * from $tableName order by $orderBy');
    final result = await db.query(tableName, orderBy: orderBy);
    return result.map((json) => Note.fromJson(json)).toList();
  }

  //? Code to Update / Modify the Exsiting Data present within the Record
  Future<int> update(Note note) async {
    final db = await instance.database;
    return db.update(tableName, note.toJson(),
        where: '${NoteFields.id} = ?', whereArgs: [note.id]);
  }

  //? Remove or Delete the Existing Record from the Database Table
  Future<int> delete(int id) async {
    final db = await instance.database;
    return db.delete(tableName, where: '${NoteFields.id} = ?', whereArgs: [id]);
  }

  //Code to release the resources
  Future close() async {
    final db = await instance.database;
    db.close();
  }

  // 
}