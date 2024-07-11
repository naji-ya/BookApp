import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'childtabbar.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: BookLending(),
  ));
}

class BookLending extends StatelessWidget {
   BookLending({super.key});

  int index=1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
appBar: AppBar(
  backgroundColor: Colors.grey[100],
      elevation: 0,
      title: Text("BOOK LENDING",style: GoogleFonts.dmSans(
        fontWeight: FontWeight.w900,
        fontSize: 24,
        fontStyle: FontStyle.italic,
        color: Colors.black,
      ),),
  bottom: TabBar( unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        indicatorColor: Colors.orangeAccent,



        tabs: [Tab(child: Text("Child",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),),
      Tab(child: Text("Human",style: TextStyle(fontWeight: FontWeight.w900,),),),
      Tab(child: Text("Education",style: TextStyle(fontWeight: FontWeight.w900,),),),
      Tab(child: Text("Science",style: TextStyle(fontWeight: FontWeight.w900,),),),

  ]),),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          elevation: 40.9,
          selectedItemColor:Colors.orangeAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark),label: "Borrow"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],

        ),
        body: TabBarView(children: [
ChildTab(),
        Icon(Icons.person),
          Icon(Icons.school),
          Icon(Icons.rocket),
        ]),


      ),
    );
  }
}
