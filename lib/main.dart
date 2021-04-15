import 'package:flutter/material.dart';

import 'home.dart' as home;
import './global.dart' as global;
import './lokal.dart' as lokal;

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
   home: new Home(),
  ));
}

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  //create controller untuk tabBar
  TabController controller;

  @override
  
  void initState(){
    controller = new TabController(vsync: this, length: 3);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.lightBlue,
         //judul
         
         title: new Text("Kawal Corona "),
           //bottom
           bottom: new TabBar(
             controller: controller,
             tabs: <Widget>[
              new Tab(child: Text('Home'),),
              new Tab(child: Text('Global'),),
              new Tab(child: Text('Lokal'),),
             ],
        ),
      ),
        
      //source code lanjutan
      //buat body untuk tab viewnya
      body: new TabBarView(
        //controller untuk tab bar
        controller: controller,
        children: <Widget>[
          //kemudian panggil halaman sesuai tab yang sudah dibuat
          new home.Home(),
          new global.Global(),
          new lokal.Lokal()
        ],
      ),
    );
  }
}