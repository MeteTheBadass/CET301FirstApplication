import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Info',
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xaa1C2833),
          title: Center(
            child:Text('My Info',style: TextStyle(color: Color(0xff95A5A6)),),

          ),
        ),
        body: MyInfo(), backgroundColor: Color(0xff212F3D),
      ),
    );
  }
}

class MyInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Expanded(child: Container(alignment: Alignment.bottomCenter,padding: new EdgeInsets.only(bottom: 15.0) ,child: CircleAvatar(radius: 65,backgroundColor: Color(0xff95A5A6) ,child: CircleAvatar(radius: 60 ,backgroundImage: AssetImage('assets/images/profile.jpg'),),),), flex: 50,),
        Container(child: Padding(padding: new EdgeInsets.symmetric(horizontal: 20.0),child: Container(color: Color(0xff95A5A6),height: 2,),),),
        Expanded(child: Container(alignment: Alignment.bottomLeft,padding: new EdgeInsets.only(left: 15),child: Text('NAME',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Color(0xff95A5A6)),),), flex: 10,),
        Expanded(child: Container(alignment: Alignment.topLeft,padding: new EdgeInsets.only(left: 15,top: 5),child: Text('Metehan Karaşahinoğlu', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'BS',color: Color(0xFF1E8449)),),), flex: 10,),
        Expanded(child:Row(children: [Column(children: [Container(padding: new EdgeInsets.only(left: 15),child: Icon(Icons.mail,color:Color(0xff95A5A6)),)],),Column(children: [Container(padding: new EdgeInsets.only(left:15,top: 5),child: Text('metehan.karasahinoglu@boun.edu.tr',style: TextStyle(color: Color(0xff95A5A6)),),),],)],),flex: 5,),
        Expanded(child:Row(children: [Column(children: [Container(padding: new EdgeInsets.only(left: 15),child: Icon(Icons.phone,color:Color(0xff95A5A6)),)],),Column(children: [Container(padding: new EdgeInsets.only(left:15,top: 5),child: Text('0 (555) 456 78 90',style: TextStyle(color: Color(0xff95A5A6)),),),],)],),flex: 10,),
      ],
    );
  }
}