import 'package:flutter/material.dart';

class ChildTab extends StatelessWidget {
  var images=["assets/images/cb1.jpg","assets/images/cb2.jpg","assets/images/cb3.jpg","assets/images/cb4.webp"];
  var titles=["Best Friends","Bloom ","My Blue Sweater","Hello Hippo"];
  var subtitles=["The story is all about telling the values \n of friendship,and a best friend",
    "The story is all about telling the values \n of friendship,and a best friend",
    "The story is all about telling the values \n of friendship,and a best friend",
    "The story is all about telling the values \n of friendship,and a best friend"];
   ChildTab({super.key});

  @override
  Widget build(BuildContext context) {
    return
 Expanded(child: ListView.builder(itemCount:images.length,itemBuilder: (context,index){
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
              child: Image(image: AssetImage(images[index])),
            ),
            bottom: 15,
          ),
          Positioned(
            child: Text(titles[index],style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 24),),
            top: 17,left: 120,
          ),
          Positioned(
            child: Text(subtitles[index],style: TextStyle(color: Colors.black87,
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
}));

  }
}
