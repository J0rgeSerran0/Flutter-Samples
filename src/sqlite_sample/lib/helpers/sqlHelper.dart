import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'dart:io';

class SqlHelper {
  static const databaseName = "sample.db";
  static DatabaseFactory databaseFactory = databaseFactoryFfi;

  static init() async {
    Database db;
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      // Initialize FFI
      sqfliteFfiInit();
      var databaseFactory = databaseFactoryFfi;
      db =
          await databaseFactory.openDatabase(join(".", SqlHelper.databaseName));
    } else {
      db = await openDatabase(
        join(await getDatabasesPath(), SqlHelper.databaseName),
        onCreate: (db, version) {},
        version: 1,
      );
    }
    createTables(db);
  }

  static Future<Database> db() async {
    init();
    return databaseFactory.openDatabase(databaseName);
  }

  static Future<void> createTables(Database database) async {
    await database.execute("""CREATE TABLE IF NOT EXISTS items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<int> createItem(String title, String? descrption) async {
    final db = await SqlHelper.db();

    final data = {'title': title, 'description': descrption};
    final id = await db.insert('items', data);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getAllItems() async {
    final db = await SqlHelper.db();
    return db.query('items', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItemBy(int id) async {
    final db = await SqlHelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItemBy(
      int id, String title, String? descrption) async {
    final db = await SqlHelper.db();

    final data = {
      'title': title,
      'description': descrption,
      'createdAt': DateTime.now().toString()
    };

    final result =
        await db.update('items', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SqlHelper.db();
    try {
      await db.delete("items", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
