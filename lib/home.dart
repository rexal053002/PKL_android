import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
            children: <Widget>[
              Container(
                height: 280,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0)
          ),
            image: DecorationImage(
              image: AssetImage('assets/image/docter.jpg'),
              fit: BoxFit.cover)),
               padding: const EdgeInsets.all(8.0),
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: Text(
                         'KAWAL CORONA',
                         style: TextStyle(
                            decorationColor: Colors.black,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 2,
                           fontSize: 35,
                           fontWeight: FontWeight.bold,
                           color: Colors.black),
                       ),
                     ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10),
                  height: 190,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/image/positif-img.png', height: 130, width: 190),
                      Text(
                        'Positif',
                        style: TextStyle(fontSize: 20)
                        ),
                        Text('114,302,776 org', style: TextStyle(fontSize: 15)
                      )
                    ],),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue,
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
                ),

                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10),
                  height: 190,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/image/sembuh.png', height: 130, width: 190),
                      Text(
                        'Sembuh',
                        style: TextStyle(fontSize: 20)
                        ),
                        Text('64,526,742 org', style: TextStyle(fontSize: 15)
                      )
                    ],),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue,
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
                  ]),),
                ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10),
                  height: 190,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/image/sad.png', height: 130, width: 190),
                      Text(
                        'Meninggal',
                        style: TextStyle(fontSize: 20)
                        ),
                        Text('2,534,921 org', style: TextStyle(fontSize: 15)
                      )
                    ],),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue,
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
                  ]),),

                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10),
                  height: 190,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/image/indo.png', height: 130, width: 190),
                      Text(
                        'Indonesia',
                        style: TextStyle(fontSize: 20)
                        ),
                        Text('1,341,314 org', style: TextStyle(fontSize: 15)
                      )
                    ],),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlue,
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
                  ]),),
                  ],)
          ],
        ),              
      ),
    );
  }
}