import 'package:flutter/material.dart';
import 'package:flutterapp6/Add.dart';
import 'package:flutterapp6/Sub.dart';
import 'package:flutterapp6/Mul.dart';
import 'package:flutterapp6/Div.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "Calculator"),
      debugShowCheckedModeBanner: false,
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

   AddTab addTab = AddTab();
   SubTab subTab = SubTab();
   MulTab mulTab = MulTab();
   DivTab divTab = DivTab();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                //isScrollable: true,
                  tabs:[
                    Tab(text:"Add"),
                    Tab(text:"Sub"),
                    Tab(text:"Mul"),
                    Tab(text:"Div"),
                  ]
              ),
              title: Text(
                'CALCULATOR',
                style: TextStyle(color: Color(0xffe8e8e8), fontSize: 25),
              ),
              centerTitle: true,
            ),

            body: TabBarView(
              children: <Widget>[
                addTab,
                subTab,
                mulTab,
                divTab,
            ],
            ),
          )
      ),
    );
  }
}
