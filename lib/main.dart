import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home: MyHomePage(title: 'Flutter Drawer '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Home screen here',style: TextStyle(fontSize: 30,color: Colors.grey),),

      ),
       drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Center(child: Text('Drawer Header',style: TextStyle(fontSize: 25,color: Colors.white),
          ),
          ),

          decoration: BoxDecoration(
            color: Colors.blue[500],
          ),
        ),
        ListTile(
            title: Text('Item 1'),

            onTap: () {}
        ),
        ListTile(
            title: Text('Item 2'),
            onTap: (){

            }

        ),
        ListTile(
            title: Text('Item 3'),
            onTap: (){

            }
        ),
        ListTile(
          title: Text('Item 4'),
          onTap: (){

          },
        ),
        ListTile(
          title: Text('Item 5'),
          onTap: (){
          },
        ),

      ],
    ),
    ),
    );
  }
}
