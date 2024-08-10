import 'package:flutter/material.dart';


class CallsPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    List callsItem= [
      {
        "images":"assets/images/shubham.jpg",
        "name":"Shubham Singh",
        "MoNO":"9986687889"
      },
      {
        "images":"assets/images/ICICI.enc",
        "name":"ICICI Pru Life ",
        "MoNO":"9986677889"


      },
      {
        "images":"assets/images/Tiffin.jpg",
        "name":"Tiffin Boy",
        "MoNO":"9938787889"

      },
      {
        "images":"assets/images/heart.webp",
        "name":"Prince Singh",
        "MoNO":"9989876889"
      },
      {
        "images":"assets/images/Rithk.jpg",
        "name":"Rithik Singh",
        "MoNO":"9948507889"
      },
      {
        "images":"assets/images/Aarti.jpg",
        "name":"Aarti Singh",
        "MoNO":"9984887889"
      },
      {
        "images":"assets/images/shubham.jpg",
        "name":"Shubham Singh",
        "MoNO":"8475897889"
      },
      {
        "images":"assets/images/ICICI.enc",
        "name":"ICICI Pru Life  ",
        "MoNO":"7659687889"

      },
      {
        "images":"assets/images/Tiffin.jpg",
        "name":"Tiffin Boy",
        "MoNO":"9988976889"

      },
      {
        "images":"assets/images/heart.webp",
        "name":"Prince Singh",
        "MoNO":"9947857889"
      },
      {
        "images":"assets/images/Rithk.jpg",
        "name":"Digital Gramin Seva",
        "MoNO":"9087687889"
      },
      {
        "images":"assets/images/Aarti.jpg",
        "name":"Aarti Singh",
        "MoNO":"9078087889"
      }
    ];

     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.indigo,
         title: Text("WA Business",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
      actions: [
        Container(width: 30,
            child: Icon(Icons.camera_alt_outlined)),
        Container(width: 30,
            child: Icon(Icons.search_rounded)),
        Container(width: 30,
            child: Icon(Icons.search))
      ],
       ),
       body: Container(height:double.infinity,
         child: Column(
           children: [
             ListTile(leading: CircleAvatar(backgroundColor: Colors.green,
               child: Icon(Icons.link,color: Colors.white,),
             ),
             title: Text("Create call link",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
               subtitle: Text("Share a common link for your Whatsapp call",
                 style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey),),
             ),
             SizedBox(height: 5,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 SizedBox(width: 20,),
                 Text("Recent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
               ],
             ),

             Expanded(
               child: ListView.builder(
                   itemCount: callsItem.length,
                   itemBuilder: (context,index){
                 return ListTile(
                   leading: CircleAvatar(
                     backgroundImage: callsItem[index]["images"]==""? AssetImage("assets/images/"):AssetImage(callsItem[index]["images"])
                   ),
                   title: callsItem[index]["name"]==""?Container(child: Text("Enter The Name"),):Text(callsItem[index]["name"]),
                   subtitle: callsItem[index]["MoNo"],
                   trailing: Icon(Icons.call),
                 ) ;
               }),
             )
           ],
         ),
       ),


     );
  }
}