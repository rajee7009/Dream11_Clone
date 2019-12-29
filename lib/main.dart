import 'package:dream11/pages/live_screen.dart';
import 'package:dream11/pages/results_screen.dart';
import 'package:dream11/pages/upcoming_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
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
      
      class Account extends StatefulWidget {
          @override
   _AccountState createState() => new _AccountState();
    
   
  }
  class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 0,length: 3);
  }
  String dropdownValue = 'Cricket';
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
    
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        title: new Row(children:<Widget>[
          Theme(
              data: Theme.of(context).copyWith(brightness: Brightness.dark),
            child:
          new DropdownButton<String>(
            
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          
          value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
  items: <String>['Cricket', 'NBA', 'Football', 'Kabbadi'].map((String value) {
    return new DropdownMenuItem<String>(
      value: value,
      child: new Text(value),
    );
  }).toList(),

)
          ),],
        
        ),
        elevation: 0.0,
        // leading: Icon(Icons.menu,color: Colors.black,),
        
        backgroundColor: Colors.white,
        bottom: new TabBar(
          labelColor: Colors.pink,
    controller: _tabController,
    unselectedLabelColor: Colors.black,
    
    indicatorColor: Colors.pink,
    tabs: <Widget>[
 
      new Tab(text: "Upcoming",),
      new Tab(text:"Live"),
      new Tab(text:"Results")

    ],
  ),
  
actions: <Widget>[

  IconButton(icon: Icon(Icons.notifications,color:Colors.grey),onPressed:()=>_tap()),
  InkWell(
    onTap: ()=>debugPrint("Profile Clicked"),
    child:Container(
      margin: EdgeInsets.only(right:10.0,left:10.0),
      width: 30.0,
      alignment: Alignment.center,
      height: 30.0,
      decoration: BoxDecoration(
        
        shape: BoxShape.circle,
        color: Colors.red,
        image: DecorationImage(
          fit: BoxFit.fill,
          
          image: NetworkImage("https://cdn.dribbble.com/users/701195/avatars/large/2c48abcc60bb492344f139ebe02c8969.jpeg?1535469022")
        )
      ),
    ))
  ],
  
        ),
      drawer: Drawer(
      elevation: 7.0,
      
    child: ListView(
      
      primary: false,
      
      shrinkWrap: true,
      children: <Widget>[
        UserAccountsDrawerHeader(
          
    accountName: Text("Sanjit Sarkar"),
    decoration: BoxDecoration(
      color: Colors.pink
    ),
    accountEmail: Text("ssanjit856@gmail.com"),
    currentAccountPicture: CircleAvatar(
      backgroundColor:
          Theme.of(context).platform == TargetPlatform.iOS
              ? Colors.white
              : Colors.white,
      child: Text(
        "S",
        style: TextStyle(fontSize: 40.0,color: Colors.pink),
      ),
    ),
  ),
        ListTile(
        
          onTap: ()=>debugPrint("Tapped"),
  
          title: Text("Cricket"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          onTap: ()=>debugPrint("Tapped"),
          title: Text("Football"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          onTap: ()=>debugPrint("Tapped"),
          title: Text("NBA"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          onTap: ()=>debugPrint("Tapped"),
          title: Text("Kabbadi"),
          trailing: Icon(Icons.arrow_forward),
        )
      ],
    ),
  ),
      body: new TabBarView(
        
    controller: _tabController,
    children: <Widget>[
      new UpcomingScreen(),
      new LiveScreen(),
      new ResultsScreen()
    ],
  ),
      );
    }
  
  
  
  }
  
  _tap() {
    debugPrint("Tapped");
}

