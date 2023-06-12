import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'sqliteHelper.dart';

//---06/11------------------------------------------------------------------------//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Pratice0611(),
    );
  }
}

class Pratice0611 extends StatefulWidget {
  const Pratice0611({super.key});

  @override
  State<Pratice0611> createState() => _Pratice0611State();
}

class _Pratice0611State extends State<Pratice0611> {
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
        //按鈕，取得資料
        onPressed: () async {
          await sqlHelp.open(); //開啟資料庫

          //讀取網路上的資料
          var response = await http.get(Uri.parse(url));
          //將json轉成list
          List l = jsonDecode(response.body);

          l.forEach((e) async {
            return await sqlHelp.insert(e);
          });
          // //將list 資料存到sqlite
          // for (var item in l) {
          //   sqlHelp.insert(item);
          // }
          //更新畫面
          setState(() {});
        },
        child: const Icon(Icons.http),
      ),
      appBar: AppBar(
        title: const Text('Sqlite in fliutterrr'),
      ),
      body: FutureBuilder(
        future: getAllPost(), //接收Future
        builder: (context, snapshot) {
          //接收snapshot，因為snapshot有資料，所以要用builder
          if (snapshot.hasData) {
            List l = snapshot.data as List;
            return ListView.builder(
              itemCount: l.length, //長度
              itemBuilder: (context, index) {
                //項目
                return InkWell(
                    //InkWell: 點擊效果，可以點擊，也可以設定點擊後的動作
                    onTap: () async {
                      //點擊後的動作
                      await sqlHelp.delete(l[index]['id']);
                      setState(() {});
                    },
                    child: ListTile(
                        title: Text(l[index]['title']),
                        subtitle: Text(l[index]['body'])));
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
