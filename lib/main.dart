import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

// TODO:
// FIXME:

void main() {
  return runApp(MaterialApp(home: new HomePage4()));
}
// void main() =>runApp(MaterialApp(
//   home:new HomePage(),
//   ));

// TODO:   StatelessWidget: 靜態的(不會改變螢幕) ，不會變動 ，不需要刷新螢幕
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('wally') // 一個 Text widdget
          ), //標題

      //TODO: body 只能擺一個 widget 而已 ，要放很多個要透過 "Row"
      body: Row(
        // TODO: 讓 BOX "並排"在一起 ， Col -> 直向
        children: <Widget>[
          // children : 放一個 list
          Container(
            //一個 Container widdget (BOX)
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0), // 讓 Container 之間有空格
            color: Colors.black,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    ); //螢幕
  }
}

//---05/18------------------------------------------------------------------//
class Homepage2 extends StatefulWidget {
  @override
  _Homepage2State createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  // function
  Color getColr() {
    return Color.fromARGB(255, Random().nextInt(255), 136, 123); //亂數
  }

  //Homepage2 的 state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.forward),
          onPressed: () {
            setState(() {}); // 刷新頁面
          }),
      appBar: new AppBar(title: Text('wally') // 一個 Text widdget
          ), //標題
      //TODO: body 只能擺一個 widget 而已 ，要放很多個要透過 "Row"
      body: Row(
        // TODO: 讓 BOX "並排"在一起 ， Col -> 直向
        children: <Widget>[
          // children : 放一個 list
          Text(
            'wallyhaha',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontStyle: FontStyle.italic), //Weight：粗細 、FontStyle :
          ),
          Container(
            //一個 Container widdget (BOX)
            color: getColr(),
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: getColr(),
            width: 100.0,
            height: 100.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0), // 讓 Container 之間有空格
            color: const Color.fromARGB(255, 145, 63, 63),
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    ); //螢幕
  }
}

//---05/21-----------------------------------------------------------------//
class HomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled = true;
    return Scaffold(
        appBar: new AppBar(title: Text('wally') // 一個 Text widdget
            ), //標題
        body: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blueAccent, shape: BoxShape.circle) //圓形
            )); //螢幕
  }
}

//---05/23-----Card---SizedBox------------------------------------------------------//
class HomePage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
        ),
        body: SizedBox(
          child: Card(child: Text('Demo')),
          width: 500,
          height: 200,
        ));
  }
}
