import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:notess/expand.dart';

 void main(){
   runApp(
     MaterialApp(
       home: ChatRoom(),
       debugShowCheckedModeBanner: false,
     )
     );
 }

/*class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  String pdfasset = "assets/The Fault in Our Stars by Green John.pdf";
//  PDFDocument _doc;
//  bool _loading;
//  @override
//  void initState() {
//    super.initState();
//    setState(() {
//      _loading = true;
//    });
//    _initPdf();
//  }
//  _initPdf() async{
//    final doc= await PDFDocument.fromAsset(pdfasset); 
//      setState(() {
//        _loading = false;
//      });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Notes App"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null)
        ],
        ),
      //  body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,),
        body: GridView.count(crossAxisCount: 2,
        padding: const EdgeInsets.all(1.5),
        scrollDirection: Axis.vertical,
        crossAxisSpacing: 0,
        mainAxisSpacing:0,
        children: List.generate(4, (index){
          return Center(
            child:Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width:3.0),
              ),
              padding:EdgeInsets.all(1.0),
              child:Text("PDF $index",
              style: Theme.of(context).textTheme.headline,),
            ),
          );
        }
        ),
        ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("Natasha Mehta"),
             accountEmail: Text("mehtanatasha23@gmail.com"),
             currentAccountPicture: GestureDetector(
               child: CircleAvatar(
                 backgroundColor: Colors.purple,
                child:Icon(Icons.person,),
             ),), 
            ),
            ExpansionTile(
              title: Text('Subjects'),
          children: <Widget>[
            ListTile(
              title: ExpansionTile(
                title: Text("Artifical Intelligence"),
                children: <Widget>[
                  ListTile(
                    title: Text("Notes"),
                    trailing: Icon(Icons.list),
                    onTap:()=>{},
                  ),
                  ListTile(
                    title: Text("Video Tutorials"),
                    trailing: Icon(Icons.video_library),
                    onTap:()=>{},
                  )
                ],),
              trailing: Icon(Icons.android),
              onTap: () => {},
            ),
            ListTile(
              title: Text("Operating System"),
              trailing: Icon(Icons.computer),
              onTap: () => {},
            ),
            ListTile(
              title: Text("Web Technology"),
              trailing: Icon(Icons.tablet_android),
              onTap: () => {},
            ),
            ListTile(
              title: Text("Microprocessor"),
              trailing: Icon(Icons.memory),
              onTap: () => {},
            ),
            ListTile(
              title: Text("Compiler Design"),
              trailing: Icon(Icons.build),
              onTap: () => {},
            ),
            ListTile(
              title: Text("Computer Networks"),
              trailing: Icon(Icons.network_check),
              onTap: () => {},
            ),
          ],
            ),

                InkWell (onTap: (){},
             child: ListTile(
               title:Text("Video Tutorials"),
               leading: Icon(Icons.video_library,
               color: Colors.purple,),
               trailing: Icon(Icons.arrow_forward),
               ),
               ),

              InkWell (onTap: (){},
             child: ListTile(
               title:Text("Log Out"),
               //leading: Icon(Icons.help,
               
               trailing: Icon(Icons.exit_to_app ,
               color: Colors.purple,),
               ),
               ),

                InkWell (onTap: (){},
             child: ListTile(
               title:Text("About Us"),
               leading: Icon(Icons.help,
               color: Colors.purple,),
               trailing: Icon(Icons.arrow_forward),
               ),
               ),
          ],
        )
      ),
    );
  }
}*/