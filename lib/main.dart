import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Util App',
    theme: ThemeData(primarySwatch: Colors.green),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Util App"),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.white70,
          indicatorWeight: 3,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt,color: Colors.white,),
            ),
            Text(
              'CHATS',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              'STATUS',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              'CALLS',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          NewPageOne("CAMERA"),ChatPage(),
          NewPageOne("STATUS"),NewPageOne('CALLS')
        ],
      ),
    );
  }
}

class ChatPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Hamza malik',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Hey! Iam using Whatsapp',style: TextStyle(color: Colors.black),),
            dense: true,
            onTap: (){

            },
            leading: CircleAvatar(
              foregroundColor: Colors.red,
              child: Text("HM",style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Hamza malik',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Hey! Iam using Whatsapp'),
            leading: CircleAvatar(
              child: Text("HM"),
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Hamza malik',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Hey! Iam using Whatsapp'),
            leading: CircleAvatar(
              child: Text("HM"),
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Hamza malik',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Hey! Iam using Whatsapp'),
            leading: CircleAvatar(
              child: Text("HM"),
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Hamza malik',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Hey! Iam using Whatsapp'),
            leading: CircleAvatar(
              child: Text("HM"),
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Hamza malik',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('Hey! Iam using Whatsapp'),
            leading: CircleAvatar(
              child: Text("HM"),
              backgroundColor: Colors.red,
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        isExtended: true,
        elevation: 30.0,
        clipBehavior: Clip.hardEdge,
        focusElevation: 30,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

        onPressed: (){

        },
      ),
    );
  }
}

class NewPageOne extends StatelessWidget {
  final String title;

  NewPageOne(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}

//        SnackBar and AlertDialog

//class bodyOfApp extends StatelessWidget {
//
//  AlertDialog dialog=AlertDialog(
//    title: Text('Warning',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
//    elevation: 5.0,
//    content: Text("Are you sure to delete this item?"),
//    actions: <Widget>[
//      Row(
//        children: <Widget>[
//          RaisedButton(
//            child: Text("Delete"),
//            textColor: Colors.white,
//            onPressed: (){
//
//            },
//          ),
//
//          Container(width: 130.0,),
//
//          RaisedButton(
//            onPressed: (){},
//            child: Text("Cancel"),
//            textColor: Colors.white,
//
//          )
//        ],
//      ),
//    ],
//  );
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Center(
//        child: Container(
//          height: 50.0,
//          width: 200.0,
//          child: RaisedButton(
//            child: Text("Click Me"),
//            onPressed: (){
//
////              Scaffold.of(context).showSnackBar(
////                  SnackBar(
////                    content: Text("Item Added Successfully"),
////                    duration: Duration(seconds: 1),
////                    backgroundColor: Colors.black87,
////                    behavior: SnackBarBehavior.floating,
////                  )
////              );
//
//            showDialog(
//              context: context,
//              child: dialog
//            );
//
//            },
//            animationDuration: Duration(seconds: 2),
//            elevation: 10.0,
//            color: Colors.redAccent,
//            textColor: Colors.white,
//          ),
//        ),
//      ),
//    );
//  }
//}
