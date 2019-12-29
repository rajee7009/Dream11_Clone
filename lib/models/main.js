import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dream 11',
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
      ),
      home: new Account(),
          );
        }
      }
      
      class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    // TODO: implement build
    return Scaffold(
    
      appBar: AppBar(
        
        title: new Text("Accounts",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold
        ),),
        elevation: 0.0,
        leading: Icon(Icons.menu,color: Colors.black,),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon:  Icon(Icons.settings,color: Colors.grey,),
            onPressed: ()=>{},
          )
         
        ],

      ),
    body: 
    new ListView(
      
      shrinkWrap: true,
      children: <Widget>[
        Column(
          
          children: <Widget>[
            SizedBox(height: 10.0,),
            Row(children: <Widget>[
              Padding(padding: EdgeInsets.only(left:20.0),),
              Container(height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300.0),
                image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1474552226712-ac0f0961a954?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")
                )
              ),),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left:20.0),
                      child: Text("Sanjit Brown Smith",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),)
                    ,
                    SizedBox(height: 5.0,),
                    Container(
                    width:100.0,
                    height: 10.0,
                    child: Stack( 
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                      
                        Container(
                          width:100.0,
                          decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(.2)
                    )),

                    Container(
margin: EdgeInsets.only(left:1.0),
                      width:60.0,
                      height: 8.0,
                          decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red
                    )),
                    Container(
                      
                      margin: EdgeInsets.only(left:90.0),
                      child: Text("10"),
                    )
                      ],
                    ),
                   
                    ),
                    
                  
                  ],
                ),
              ),
              Container( 
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(left:92.0),
                child:Icon(Icons.settings,color: Colors.grey,))
              
            ],
            )
          ],
        ),
         Container(
           margin: EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                     width:100.0,
                     height: 35.0,
                   
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                         begin: Alignment.topLeft,
      end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
      colors: [const Color.fromRGBO(220, 26, 53,1), const Color.fromRGBO(250, 181, 107,1)], // whitish to gray
      tileMode: TileMode.repeated,
                      )
                     ),
                  child: 
                  Row(children: <Widget>[

                  ],),
                   )
      ],
     
    ),
    );
  }

}

