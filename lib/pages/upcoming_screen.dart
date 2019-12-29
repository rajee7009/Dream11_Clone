import 'package:flutter/material.dart';
import '../models/match_card.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
class UpcomingScreen extends StatefulWidget {
 
@override
  _UpcomingScreenState createState() => new _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
   
    return new ListView.builder(
     
     itemCount: data.length,
     
itemBuilder: (context,i)=>new Column(

  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
Padding(padding: EdgeInsets.only(top:20.0),),
    Container(
    
      width:MediaQuery.of(context).size.width/1.1,
      height: 150.0,
      decoration: BoxDecoration(
  boxShadow: [
            new BoxShadow(
              color: Colors.grey.withOpacity(.1),
              offset: new Offset(0,0),
              spreadRadius: 5.0,
              blurRadius: 5.0
            )
          ],
       border: Border.all(
         
         width: 0.0,
         color: Colors.grey.withOpacity(.5)
       ),
        color: Colors.white
      ),
      child: 
      new InkWell(
  onTap: ()=>debugPrint("Tapped "+data[i].team_1+" VS "+data[i].team_2),
  child: Card(
        color: Colors.white,
    elevation: 0.0,
    
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 0.0,top:20.0,bottom: 20.0),
        width:70.0,
        height: 70.0,
        decoration: BoxDecoration(
          
          image: DecorationImage(
            
            fit: BoxFit.fill,
        image: NetworkImage(data[i].team_1)
          )
        ),
      ),
      Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:20.0),
            child: Text(data[i].match_title,style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w500),),
          ),
          Container(
            child: Text("VS",style: TextStyle(fontWeight: FontWeight.bold),),
          )
          ,
          Container(
       
            width:130.0,
            height: 30.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),topRight:Radius.circular(10.0) ),
            ),
            child: Text(data[i].time,style: TextStyle(color: Colors.white),),
          )
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 0.0,top:20.0,bottom: 20.0),
        width:70.0,
        height: 70.0,
        decoration: BoxDecoration(
          
          image: DecorationImage(
            
            fit: BoxFit.fill,
        image: NetworkImage(data[i].team_2)
          )
        ),
      )
    ],),
    ),
    )
    )
  ],
),

   ); 
    }
}