import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

// TODO:
// FIXME:

void main() {
  runApp(pratice_0527());
}
// void main() =>runApp(MaterialApp(
//   home:new HomePage(),
//   ));

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

// class pratice_0526_image extends StatelessWidget {
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

class pratice_0527 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: GridView.builder(
              gridDelegate:
                  //已知一排有幾個
                  //SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2 / 3), //長寬比為 2/3 ，一排有兩個
                  // 一排有幾個看螢幕寬度
                  SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 10,
                      childAspectRatio: 2 / 3), //寬度最大為 100，高度是寬度的 1.5 倍
              itemBuilder: (context, index) {
                return Card(
                  child: Container(
                    color: Colors.blue,
                    child: Text('Title: $index'),
                  ),
                );
              })),
    );
  }
}
