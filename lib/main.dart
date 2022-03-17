import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SmartMonitoring",
      /*theme: ThemeData(
        primarySwatch: Colors.blue
      ),*/
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void pressed_Menu() {
    print("menu button cliced!");
  }

  void pressed_Shopping_Cart() {
    print("shopping cart button cliced!");
  }

  void pressed_Search() {
    print("shopping cart button cliced!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("게임만들기!"),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        //elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: pressed_Menu,
        //   color: Colors.black,
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: pressed_Shopping_Cart,
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: pressed_Search,
            color: Colors.blue[300],
          ),
        ],
      ),
      drawer: Drawer(
        //backgroundColor: Colors.amber[800],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/alarm.png"),
                backgroundColor: Colors.amber[800],
              ),
              accountEmail: Text("text"),
              accountName: Text("zmzmzmzm"),
              onDetailsPressed: (){
                print("arrow move...");
              },
              decoration: BoxDecoration(
                color:Colors.red[200],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),topRight:Radius.circular(40.0))
                ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/alarm.png"),
                radius: 60.0,
                backgroundColor: Colors.amber[800],
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text(
              "이름",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "ㅋㅋㅋㅋㅋ",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "파워레벨",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "10000",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "주먹",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "발차기",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "박치기",
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Center(
              child: Image.asset("assets/ls_logo.png"),
              // child: CircleAvatar(
              //   backgroundImage: AssetImage("assets/ls_logo.png"),
              //   radius: 45.0,
              //   backgroundColor: Colors.amber[800],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
