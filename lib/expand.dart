import'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
/*void main(){
  runApp(MaterialApp(
    home: ChatRoom(),
    debugShowCheckedModeBanner: false,
    ),
*/

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  var string ;
  final myController= TextEditingController();
  void dispose(){
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(icon: Icon(Icons.arrow_left),
        //iconSize: 30.0,
        //color: Colors.white, onPressed: null),
        title: Center(child: Text("           Doubt Section",
        style: TextStyle(color:Colors.white),)),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null)
        ],
      ),
     body:  SafeArea(
          child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.stretch,
           children:<Widget>[
              SizedBox(
                height:4.0, 
              ),
                Align(
                  alignment: Alignment.bottomRight,
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     decoration: BoxDecoration(
                       color:Colors.purple,
                       border: Border.all(color: Colors.purple, width: 2),
                       borderRadius: BorderRadius.circular(5.0)
                     ),
                     child: Padding(
                       padding: EdgeInsets.all(2.0),
                           child: AutoSizeText("$string",
                           style: TextStyle(
                             color:Colors.white,
                             fontSize: 20.0,
                           ),),
                         ),
               ),
                  ),
                ),
             
              Align(
                alignment: Alignment(0.7,0.7),
                            child:
                    Container(
                      padding: EdgeInsets.all(2.0),
                      height: 40.0,
                         child:Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: <Widget>[
                             IconButton(icon: Icon(Icons.photo_camera,),
                             color: Colors.purple,
                             onPressed: null),
                             //Container(width:2.0),
                             Container(
                               height: (MediaQuery.of(context).size.height/100)*15,
                               width:(MediaQuery.of(context).size.width/100)*70,
                               child: TextField(
                                 controller: myController, 
                                decoration: InputDecoration(
                               labelText:"Type your Queries here :)",
                               fillColor: Colors.white,
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15.0),
                                 borderSide: BorderSide(color: Color.fromARGB(0xFF, 0xBA, 0x68, 0xC8) ,
                                 width:2.0,),
                               )
                            ),
                          ),
                         ),
                             FloatingActionButton(onPressed: ()async{
                              setState((){
                               string= myController.text; 
                               myController.clear();
                             });
                             },
                             backgroundColor: Colors.white,
                             child:Icon(Icons.send,
                             color:Colors.purple,)),
                           ],
                         ),
             ),
              ),
           ],
         ),
     ),
    );
  }
}