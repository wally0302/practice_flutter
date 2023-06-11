import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'sqliteHelper.dart';

//---06/01------------------------------------------------------------------------//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Pratice0601(),
    );
  }
}

class Pratice0601 extends StatefulWidget {
  const Pratice0601({super.key});

  @override
  State<Pratice0601> createState() => _Pratice0601State();
}

class _Pratice0601State extends State<Pratice0601> {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  final sqlHelp = sqliteHelper(); //  from  lib/sqliteHelper.dart

  getAllPost() async {
    //從sqlite讀取資料
    await sqlHelp.open(); //開啟資料庫
    return await sqlHelp.queryAll(); //讀取所有資料
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await sqlHelp.open(); //開啟資料庫

          //讀取網路上的資料
          var response = await http.get(Uri.parse(url));
          //將json轉成list
          List l = jsonDecode(response.body);
          //將list 資料存到sqlite
          for (var item in l) {
            sqlHelp.insert(item);
          }
          //更新畫面
          setState(() {});
        },
        child: const Icon(Icons.http),
      ),
      appBar: AppBar(
        title: const Text('Sqlite in fliutterrr'),
      ),
      body: FutureBuilder(
        future: getAllPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List l = snapshot.data as List;
            return ListView.builder(
              itemCount: l.length, //data 是 object，所以要轉成 List
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () async {
                      await sqlHelp.delete(l[index]['id']);
                      setState(() {});
                    },
                    child: ListTile(
                        //title: Text(snapshot.data![index]['title']),
                        title: Text(l[index]['title']),
                        subtitle: Text(l[index]['body'])
                        // subtitle: Text(snapshot.data[index]['body']),
                        ));
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
