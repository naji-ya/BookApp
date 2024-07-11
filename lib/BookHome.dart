
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookHome(),
  ));
}

class BookHome extends StatelessWidget {
  
  var image=["assets/images/cb1.jpg","assets/images/cb2.jpg","assets/images/cb3.jpg","assets/images/cb4.webp"];
  var title=["Best Friends","Bloom ","My Blue Sweater","Hello Hippo"];
  var subtitle=["The story is all about telling the values \n of friendship,and a best friend",
    "The story is all about telling the values \n of friendship,and a best friend",
    "The story is all about telling the values \n of friendship,and a best friend",
    "The story is all about telling the values \n of friendship,and a best friend"];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Text("ENJOY READING",style: GoogleFonts.dmSans(
          fontWeight: FontWeight.w900,
          fontSize: 24,
          fontStyle: FontStyle.italic,
          color: Colors.black,
        ),),
      ),

bottomNavigationBar: BottomNavigationBar(
  elevation: 40.9,
  selectedItemColor:Colors.orangeAccent,
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark),label: "Borrow"),
  BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
],
  
),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.search,size: 30,),
                  fillColor: Colors.grey[300],
                  hintText: "   Search for books",
                  border: OutlineInputBorder(
borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(18),
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 180,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(18),
              ),
              child:Stack(
                children: [
                  Positioned(child: Text("Child Picture ",style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold,
                    color: Colors.brown[600]
                  ),),
                  top: 20,left: 25,),
                  Positioned(child: Text("Book ",style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold,
                      color: Colors.brown[600]
                  ),),
                    top: 53,left: 25,),

                  Positioned(
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(17)

                      ),
                      child: Center(child: Text("find books",style: TextStyle(color: Colors.white54),)),
                    ),
                    top: 100,
                    left: 25,
                  ),
                  Positioned(
                    child: Container(
                      height: 150,
                        width: 150,
                        child: Image(image: AssetImage("assets/images/dragon-reading-book.png"),fit: BoxFit.fill,)),
                 top: 20,
                    right: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Container(
                   height:33,width:33,
                   child: Image(image: AssetImage("assets/images/record-book.png"),),),
                Container(
                  height:40,width:40,
                  child: Image(image: AssetImage("assets/images/reading.png"),),),
                Container(
                  height:44,width:44,
                  child: Image(image: AssetImage("assets/images/space-travel.png"),),),
                Container(
                  height:30,width:30,
                  child: Image(image: AssetImage("assets/images/menu.png"),),),
              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Book list",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("reading",style: TextStyle(fontWeight: FontWeight.bold),),
                Text(" space",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("more",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(thickness: 1.0,),
            Row(mainAxisAlignment: MainAxisAlignment.start,

              children: [
Container(

  height: 15,
  width: 10,
  color: Colors.yellow,
),
                SizedBox(width: 5,),
                Text("RECOMMEND",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(width: 180,),
                Text("see all"),
                Icon(Icons.error,color: Colors.black12,size: 20,)

              ],
            ),
            SizedBox(height: 20,),
            Expanded(child: ListView.builder(itemCount:image.length,itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  
                  color: Colors.grey[200]
                ),
                height: 160,
                child:Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 150,
                        width: 100,
                        child: Image(image: AssetImage(image[index])),
                      ),
                      bottom: 15,
                    ),
                    Positioned(
                      child: Text(title[index],style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 24),),
                      top: 17,left: 120,
                    ),
                    Positioned(
                      child: Text(subtitle[index],style: TextStyle(color: Colors.black87,
                          fontSize: 15),),
                      top: 60,left: 120,
                    ),
                    Positioned(

                      child: Container(
                        height: 30,
                        width: 98,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(17)

                        ),
                        child: Center(child: Text("Borrow it",style: TextStyle(color: Colors.brown),)),
                      ),
                      top: 120,right: 10,
                    ),
                    Positioned(
                      child: Text("261",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,
                          fontSize: 15),),
                      top: 120,left: 120,
                    ),
                    Positioned(
                      child: Text("remaining",style: TextStyle(color: Colors.black87,
                          fontSize: 15),),
                      top: 120,left: 150,
                    ),
                  ],
                )
              );
            }))


          ],
        ),
      ),
    );
  }
}
