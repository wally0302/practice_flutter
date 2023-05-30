//import 'dart:ui';
import 'package:flutter/material.dart';
//import 'dart:math';
//import 'package:flutter/rendering.dart';

// TODO:
// FIXME:

// void main() {
//   runApp(MyApp());
// }

// void main() =>runApp(MaterialApp(
//   home:new HomePage(),
//   ));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'My App',
//       home: Pratice0530_1(),
//     );
//   }
// }

// TODO:   StatelessWidget: 靜態的(不會改變螢幕) ，不會變動 ，不需要刷新螢幕
// class HomePage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(title: Text('wally') // 一個 Text widdget
//           ), //標題

//       //TODO: body 只能擺一個 widget 而已 ，要放很多個要透過 "Row"
//       body: Row(
//         // TODO: 讓 BOX "並排"在一起 ， Col -> 直向
//         children: <Widget>[
//           // children : 放一個 list
//           Container(
//             //一個 Container widdget (BOX)
//             color: Colors.red,
//             width: 100.0,
//             height: 100.0,
//           ),
//           Container(
//             color: Colors.blue,
//             width: 100.0,
//             height: 100.0,
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 10.0), // 讓 Container 之間有空格
//             color: Colors.black,
//             width: 100.0,
//             height: 100.0,
//           ),
//         ],
//       ),
//     ); //螢幕
//   }
// }

//---05/18------------------------------------------------------------------//
// class Homepage2 extends StatefulWidget {
//   @override
//   _Homepage2State createState() => _Homepage2State();
// }

// class _Homepage2State extends State<Homepage2> {
//   // function
//   Color getColr() {
//     return Color.fromARGB(255, Random().nextInt(255), 136, 123); //亂數
//   }

//   //Homepage2 的 state
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.forward),
//           onPressed: () {
//             setState(() {}); // 刷新頁面
//           }),
//       appBar: new AppBar(title: Text('wally') // 一個 Text widdget
//           ), //標題
//       //TODO: body 只能擺一個 widget 而已 ，要放很多個要透過 "Row"
//       body: Row(
//         // TODO: 讓 BOX "並排"在一起 ， Col -> 直向
//         children: <Widget>[
//           // children : 放一個 list
//           Text(
//             'wallyhaha',
//             style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.black,
//                 fontStyle: FontStyle.italic), //Weight：粗細 、FontStyle :
//           ),
//           Container(
//             //一個 Container widdget (BOX)
//             color: getColr(),
//             width: 100.0,
//             height: 100.0,
//           ),
//           Container(
//             color: getColr(),
//             width: 100.0,
//             height: 100.0,
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 10.0), // 讓 Container 之間有空格
//             color: const Color.fromARGB(255, 145, 63, 63),
//             width: 100.0,
//             height: 100.0,
//           ),
//         ],
//       ),
//     ); //螢幕
//   }
// }

// //---05/21-----------------------------------------------------------------//
// class pratice_0521 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //debugPaintSizeEnabled = true;
//     return Scaffold(
//         appBar: new AppBar(title: Text('wally') // 一個 Text widdget
//             ), //標題
//         body: Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//                 color: Colors.blueAccent, shape: BoxShape.circle) //圓形
//             )); //螢幕
//   }
// }

// //---05/23-----Card---SizedBox------------------------------------------------------//
// class pratice_0523 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Demo'),
//         ),
//         body: SizedBox(
//           child: Card(child: Text('Demo')),
//           width: 500,
//           height: 200,
//         ));
//   }
// }

// //---05/24----TextField------------------------------------------------------//

// class pratice_0524 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController date_controller = new TextEditingController();
//     TextEditingController name_controller = new TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Demooo'),
//       ),
//       body: TextField(
//           controller: date_controller,
//           // onChanged: (text) {
//           //   //一有更動馬上印出來
//           //   print('onChanged');
//           //   print(text);
//           //   print('-------');
//           // },
//           onEditingComplete: () {
//             print('onEditingComplete');
//             print(date_controller.text);
//           },
//           // onSubmitted: (text) {
//           //   //按下 Done 才會印出
//           //   print('onSubmitted');
//           //   print(text);
//           // },
//           decoration: new InputDecoration(
//               icon: Icon(Icons.calendar_today),
//               labelText: "this is date",
//               suffixIcon: Icon(Icons.password), //預設就會顯示
//               //suffix: Icon(Icons.password), // 點擊才會顯示
//               focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(
//                 color: Colors.green,
//               )),
//               helperText: '輸入日期',
//               hintText: '請輸入日期',
//               suffix: IconButton(
//                   icon: Icon(Icons.close),
//                   onPressed: () {
//                     FocusScope.of(context).requestFocus(
//                         new FocusNode()); //取得 TextField 的 focus，再重新給一個 focus
//                   }))),
//     );
//   }
// }

// //---05/25----ListView------ListViewbuilder---------------------------------------//

// // class pratice_0525_ListView extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('ListViewDemo'),
// //       ),
// //       //TODO: childre: 要回傳一個 list
// //       //TODO: generate: 自動產生一個陣列出來
// //       body: ListView(
// //           children: List.generate(20, (index) {
// //         print(index);
// //         // 回傳一個 widget 回去
// //         return Card(
// //           child: Container(
// //             // Card 本身沒有大小 ，需要把它撐開來(Container)
// //             //如果不給 Container 大小，會以 Parent (Card) 為 大小 -> 0
// //             height: 100,
// //             color: Colors.green,
// //             child: Text('$index'),
// //           ),
// //         );
// //       })),
// //     );
// //   }
// // }

// // class pratice_0525_ListViewbuilder extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(
//         title: Text('ListViewbuilderDemo'),
//       ),
//       body: ListView.builder(
//           //itemCount: 10, //數量
//           itemBuilder: (context, index) {
//         print(index);
//         //自動根據目前的 index 來產生 Card
//         return Card(
//           child: Container(
//             height: 100,
//             color: Colors.blue,
//             child: Text('$index'),
//           ),
//         );
//       }));
// }

//---05/26--------image-------------------------------------------------------------------------------//

// 不能直接執行嗎

// class MyApp extends StatelessWidget {
//   final String Img = 'https://hackmd.io/_uploads/Hk9CIGirn.png'; //網路下載
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ImageDemoo'),
//       ),
//       // body: Image.network( //網路下載圖片
//       //   Img,
//       //   height: 200.0,
//       //   alignment: Alignment.bottomCenter,//靠著底部向下對齊
//       //   fit: BoxFit.cover,//裁切
//       // ),
//       body: Image.asset(
//         'images/DSC09681.JPG',
//         height: 500.0,
//         alignment: Alignment.center,
//       ),
//     );
//   }
// }

//---05/27----GridView count -----GridView build--------------------------------------------------------------------//
// class pratice_0527 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Grid List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text(title),
//           ),
//           body: GridView.count(
//             crossAxisCount: 2, //一行有幾個
//             childAspectRatio: 2 / 3, //高度是寬度的 1.5 倍
//             children: List.generate(10, (index) {
//               //產生 陣列
//               return Card(
//                 child: Container(
//                   color: Colors.blue,
//                   child: Text('Title: $index \n SubTitle:wally'),
//                   //無法設定高度寬度，只能用 childAspectRatio 來設定
//                 ),
//               );
//             }),
//           )),
//     );
//   }
// }

// class pratice extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     const title = 'Grid List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text(title),
//           ),
//           body: GridView.builder(
//               gridDelegate:
//                   //已知一排有幾個
//                   //SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2 / 3), //長寬比為 2/3 ，一排有兩個
//                   // 一排有幾個看螢幕寬度
//                   SliverGridDelegateWithMaxCrossAxisExtent(
//                       maxCrossAxisExtent: 10,
//                       childAspectRatio: 2 / 3), //寬度最大為 100，高度是寬度的 1.5 倍
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: Container(
//                     color: Colors.blue,
//                     child: Text('Title: $index'),
//                   ),
//                 );
//               })),
//     );
//   }
// }
//---05/29------------------------------------------------------------------------//

//TODO:用 StatelessWidge 畫面不會更新，所以要用 StatefulWidge

// class Practice0529 extends StatelessWidget {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         //超過三個要加這個，才會有文字
//         type: BottomNavigationBarType.fixed,
//         //點擊時要做什麼事情
//         onTap: (int idx) {
//           //print(idx);
//           //接收 idx
//           index = idx;
//         },
//         //預設選擇第幾個
//         currentIndex: index,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: Colors.black), //按下去會 print idx =0
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Colors.black), // idx =1
//             label: 'Person',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings, color: Colors.black), // idx =2
//             label: 'Settings',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.close, color: Colors.red), // idx =3
//             label: 'Close',
//           ),
//         ],
//       ),
//     );
//   }
// }
// class Practice0529 extends StatefulWidget {
//   const Practice0529({super.key});

//   @override
//   State<Practice0529> createState() => _Practice0529State();
// }

// class _Practice0529State extends State<Practice0529> {
//   // index 用來記錄目前是第幾個按鈕
//   int index = 0;

//   //給 body 一個陣列，四顆按鈕，所以要給四個，就可以切換畫面了
//   List<Widget> page = [
//     Container(
//       color: Colors.red,
//     ),
//     Container(
//       color: Colors.blue,
//     ),
//     Container(
//       color: Colors.green,
//     ),
//     Container(
//       color: Colors.yellow,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           // title: Text('0529 StatefulWidget Demo'),
//           ),
//       bottomNavigationBar: BottomNavigationBar(
//         //超過三個要加這個，才會有文字
//         type: BottomNavigationBarType.fixed,
//         //點擊時要做什麼事情
//         onTap: (int idx) {
//           //print(idx);
//           //setState 會重新執行 build，所以會重新畫畫面 ->所以要用 StatefulWidget
//           setState(() {
//             //接收 idx
//             index = idx;
//           });
//         },
//         //預設選擇第幾個
//         currentIndex: index,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: Colors.black), //按下去會 print idx =0
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Colors.black), // idx =1
//             label: 'Person',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings, color: Colors.black), // idx =2
//             label: 'Settings',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.close, color: Colors.red), // idx =3
//             label: 'Close',
//           ),
//         ],
//       ),
//       //告訴 body 要顯示哪一個 page
//       body: page[index],
//     );
//   }
// }

//---05/30------------------------------------------------------------------------//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 不是用 home，而是用 initialRoute，這樣才找的到根目錄
      // home: Pratice0530_1(),
      //    or
      initialRoute: '/', //從根目錄開始
      routes: {
        '/': (context) {
          return const Pratice0530_1();
        },
        // '/page2': (context) {
        //   return Pratice0530_2(
        //     key: UniqueKey(),
        //     textData: '',
        //   );
        // },
      },
    );
  }
}

// page 1
class Pratice0530_1 extends StatefulWidget {
  const Pratice0530_1();

  @override
  State<Pratice0530_1> createState() => _Pratice0530_1State();
}

class _Pratice0530_1State extends State<Pratice0530_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 1'),
      ),
      body: Container(
        color: Colors.red,
      ),
      // FloatingActionButton 會在右下角顯示一個浮動按鈕
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 如果要用下面這行，要把上面的 routes 註解掉

          // 只會跳到 page2 ，但是 "沒辦法傳資料" 過去，所以要用下面的方法
          // Navigator.pushNamed(context, '/page2'); //跳到 page2 ，會去讀取上面的 routes

          //    or

          //跳到 page2 ，並且把資料傳過去
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Pratice0530_2(
                textData: 'Hello World',
                key: UniqueKey()); //key: UniqueKey() 這個是為了讓每次都是新的頁面
          })).then((value) {
            //then 會接收 page2 傳回來的資料 (因為 Navigator 是非同步，所以要用 then 等待執行完的結果)
            print(value);
          });
        },
      ),
    );
  }
}

// page 2
class Pratice0530_2 extends StatelessWidget {
  final String textData; // 這個是要接收資料的，所以要加 final

  // const Pratice0530_2({required Key key, required this.textData}) //required 一定要輸入
  //     : super(key: key);//super(key: key) 這個是為了讓每次都是新的頁面

  //      or

  const Pratice0530_2(
      //為了讓每次都是新的頁面，所以要加 key
      {required Key key,
      required this.textData}); //required 一定要輸入

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),
        body: SizedBox.expand(
          //讓 Container 佔滿整個畫面
          child: Container(
            color: Colors.green,
            child: Text(textData),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //Navigator.of(context).pop(); //回到上一頁，但是沒辦法傳資料過去
            Navigator.pop(context, 'back data'); //是回到上一頁，並且把資料傳過去
          },
        ));
  }
}
