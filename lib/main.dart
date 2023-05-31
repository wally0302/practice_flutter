//import 'dart:ui';

import 'package:flutter/material.dart';
//import 'dart:math';
//import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
// TODO:
// FIXME:

//---05/31------------------------------------------------------------------------//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Pratice0531(),
    );
  }
}

class Pratice0531 extends StatefulWidget {
  const Pratice0531({super.key});

  @override
  State<Pratice0531> createState() => _Pratice0531State();
}

class _Pratice0531State extends State<Pratice0531> {
  final String host = 'https://jsonplaceholder.typicode.com/posts';

  List datas = [];

  @override
  void initState() {
    super.initState();
  }

  // ****** 3 種取得資料的方法 ******

  //http.get 回傳的是一個非同步的資料，所以要用 async(非同步) await(等待)

  // getData() async {
  //   //有資料回傳後才會繼續執行，如果沒有收到資料，就會一直等待
  //   var resopnse = await http.get(Uri.parse(host)); //uri.parse 轉換網址，如果沒有轉換，會報錯
  //   print(resopnse.body);
  // }
  //
  // or
  //
  //這個是用 then 的方式，不用 async await
  // getData() {
  //   http.get(Uri.parse(host)).then((response) {
  //     //then: 等待資料回傳
  //     print(response.body);
  //   });
  // }
  //
  // or
  //
  // 配合 ListView.builder 顯示資料
  // getData() {
  //   http.get(Uri.parse(host)).then((response) {
  //     //print(response.body); //印出資料

  //     //print(datas.length);//印出資料的長度

  //     setState(() {
  //       //setState: 重新整理畫面
  //       datas = jsonDecode(response.body); //jsonDecode: 將 json 轉換成 list
  //     });
  //   });
  // }
  //
  //or
  //
  // 配合 FutureBuilder 顯示資料
  getData() {
    return http.get(Uri.parse(host));
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
        appBar: AppBar(title: const Text('Http + FutureBuilder')),

        // FutureBuilder: 用來顯示非同步的資料
        body: ListView.builder(
          //ListView.builder: 用來顯示 list
          itemCount: datas.length,
          itemBuilder: (context, index) {
            //itemBuilder: 用來顯示每一筆資料
            return ListTile(
              //ListTile: 顯示每一筆資料的樣式
              leading: Text(datas[index]['id'].toString()), //leading: 顯示在最左邊
              title: Text(datas[index]['title']),
              subtitle: Text(datas[index]['body']),
            );
          },
        ));
  }
}
