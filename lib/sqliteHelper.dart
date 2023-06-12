import 'package:sqflite/sqflite.dart';

class sqliteHelper {
  final Filename = 'mydb.db'; //sqlite 檔案名稱
  final table = 'mytable';
  late Database db;
  open() async {
    //因為 getDatabasesPath 是 future 所以要用 await
    String path = "${await getDatabasesPath()}/$Filename"; //sqlite檔案路徑
    db = await openDatabase(path);
    // ignore: prefer_conditional_assignment
    if (db == null) {
      //如果db是空的就開啟，就不用每次都開新的
      // openDatabase: 開啟資料庫 、path: 資料庫路徑 、version: 資料庫版本、onCreate: 資料庫第一次建立時執行
      db = await openDatabase(path, version: 1, onCreate: (db, ver) async {
        //產生table
        //不希望id重複，所以用PRIMARY KEY
        await db.execute('''
          CREATE TABLE $table (
            id INTEGER PRIMARY KEY,
            userId INTEGER,
            title TEXT,
            body TEXT
            );
          ''');
      });
    }
  }

  // {
  //  {
  //   "userId": 1,
  //   "id": 1,
  //   "title": "delectus aut autem",
  //   "body": "it is a test
  //  } ,
  //  {
  //   "userId": 2,
  //   "id": 2,
  //   "title": "delectus aut autem",
  //   "body": "it is a test
  //  },
  // }

  //將上面的json資料存到sqlite

  //Map 是一種 key-value 的資料結構，key 是唯一的，value 可以重複，用來儲存資料
  //String : 欄位名稱 (依照資料庫的欄位名稱做設定)
  //dynamic :欄位值(因為不知道欄位值是什麼型態，可能是int、string...)
  //values : 傳入的值
  insert(Map<String, dynamic> values) async {
    return await db.insert(table, values);
  }

  //查詢所有資料
  queryAll() async {
    return await db.query(table, columns: null); //columns: null -> 代表查詢所有欄位
  }

  //刪除資料
  delete(int id) async {
    return await db.delete(table, where: 'id = $id');
  }
}
