//import 'package:sqflite/sqflite.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:path/path.dart';
//// import 'dart:async';
//import 'dart:io';
//
//class DbProvider {
//  // DBのインスタンスはDatabaseで定義します
//  Database db;
//
//  // Pathの取得およびDBを開く処理は非同期のため初期化処理をasyncで囲みます。
//  // Pathはsqflite の getDatbasePath()でも取得することができます。
//  void init() async {
//    Directory documentDirectory = await getApplicationDocumentsDirectory();
//    final path = join(documentDirectory.path, "sample.db");
//
//    // openDatabaseメソッドを使用することでDBインスタンスを取得することができます。
//    db = await openDatabase(
//        path,
//        version: 1,
//        onCreate: (Database newDb, int version) {
//        // DBがpathに存在しなかった場合に onCreateメソッドが呼ばれます。
//        // このタイミングでTableの生成などを行います。
//        // db.executeでSQL文の実行を行うことができます。
//        // なお、DBに指定できるプロパティは
//        // INTEGER（int）、TEXT（String）、REAL（num）、BLOB（List<int>）のみになるため注意が必要です。
//          newDb.execute("""
//            CREATE TABLE Player
//              (
//                      CREATE TABLE player(id INTEGER PRIMARY KEY, name TEXT, height INTEGER, weight INTEGER, age INTEGER, position TEXT, nation TEXT, club TEXT, dominatFoot TEXT;
//              )
//            """);
//        },
//    );
//  }
//}