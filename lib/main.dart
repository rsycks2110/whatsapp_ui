
import 'package:flutter/material.dart';

import 'CallsPage.dart';
import 'MessagePage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home:MyFirstApp(),
     // home:CallsPage(),
    );
  }
}
class MyFirstApp extends StatelessWidget{
 List listItem=[

   {
     "images":"assets/images/shubham.jpg",
     "name":"Shubham Singh",
     "Message":" I am Feeling Good",
     "timing": "3:30 PM ",
     "alert":"1"
   },
   {
     "images":"assets/images/ICICI.enc",
     "name":"ICICI Pru Life ",
     "Message":" Congratulations For You",
     "timing": "6:30 PM",
     "alert":""

   },
   {
     "images":"assets/images/Tiffin.jpg",
     "name":"Tiffin Boy",
     "Message":" Tiffin Has Been Delivered",
     "timing": "6:30 PM",
     "alert":""

   },
   {
     "images":"assets/images/heart.webp",
     "name":"Prince Singh",
     "Message":" I am Busy Right Now",
     "timing": "03/11/2023",
     "alert":"1"
   },
   {
     "images":"assets/images/Rithk.jpg",
     "name":"Rithik Singh",
     "Message":" Get Your Business Seva Portal For Gramin ",
     "timing": "04/09/2023",
     "alert":"2"
   },
   {
     "images":"assets/images/Aarti.jpg",
     "name":"Aarti Singh",
     "Message":" Studying Right Now",
     "timing": "3:30 PM ",
     "alert":""
   },
   {
     "images":"assets/images/shubham.jpg",
     "name":"Shubham Singh",
     "Message":" I am Feeling Good",
     "timing": "3:30 PM ",
     "alert":"1"
   },
   {
     "images":"assets/images/ICICI.enc",
     "name":"ICICI Pru Life  ",
     "Message":" Congratulations For You Mr. shubham Singh",
     "timing": "6:30 PM",
     "alert":"1"

   },
   {
     "images":"assets/images/Tiffin.jpg",
     "name":"Tiffin Boy",
     "Message":" Tiffin Has Been Delivered",
     "timing": "6:30 PM",
     "alert":""

   },
   {
     "images":"assets/images/heart.webp",
     "name":"Prince Singh",
     "Message":" I am Busy Right Now",
     "timing": "03/11/2023",
     "alert":"1"
   },
   {
     "images":"assets/images/Rithk.jpg",
     "name":"Digital Gramin Seva",
     "Message":" Get Your Business Seva Portal For Gramin ",
     "timing": "04/09/2023",
     "alert":""
   },
   {
     "images":"assets/images/Aarti.jpg",
     "name":"Aarti Singh",
     "Message":" Studying Right Now",
     "timing": "3:30 PM",
     "alert":"1"
   },

 ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("WA Business",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white)),
        actions: [
          Container(width: 30,
              child: Icon(Icons.camera_alt_outlined)),
          Container(width: 30,
              child: Icon(Icons.search_rounded)),
          Container(width: 30,
              child: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(width: 50,height: 30,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200
              ),
               child: Center(
                 child: Text('All',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
              ),
               )),
              SizedBox(width: 10,),
      Container(width: 80,height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200
        ),
        child: Center(
          child: Text('Unread',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
          ),)),
              SizedBox(width: 10,),
              Container(width:80,height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200
                  ),
                  child: Center(
                    child: Text('Groups',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
                    ),)),

            ],
          ),
         ListTile(
           leading: Container(width: 40,
               child: Icon(Icons.archive_outlined,color:Colors.green,size: 30,)),
           title: Text("Archived",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
         )),
          SizedBox(height:5),
          Expanded(
            child: ListView.builder(
              itemCount: listItem.length,
                itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(listItem[index]["images"]),
                  radius: 20,

                ),
                title: Text(listItem[index]["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                subtitle: Text(listItem[index]["Message"]),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(listItem[index]["timing"])??Container(),
                    SizedBox(height: 5,),
                    CircleAvatar(backgroundColor: Colors.green,radius: 10,
                        child: listItem[index]["alert"]==""?Container(
                          color: Colors.white,
                        ):Text(listItem[index]["alert"],style: TextStyle(fontSize: 12),)),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.black,),label: "Calls",backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon: Icon(Icons.update,color: Colors.black,),label: "Updates",backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon:Icon(Icons.today_outlined,color:Colors.black),label: "Tools",backgroundColor: Colors.grey),

        ],
      ),
    );
  }
}
