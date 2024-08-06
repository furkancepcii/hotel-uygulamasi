import 'package:flutter/material.dart';
class imagesPage extends StatefulWidget {
  const imagesPage({super.key});

  @override
  State<imagesPage> createState() => _imagesPageState();
}

class _imagesPageState extends State<imagesPage> {
  var images ={
   "1.jpeg",
   "2.png",
   "3.jpeg",
    
  };
   var images1 ={
   "4.jpeg",
   "5.jpeg",
   "6.png",

  };
   var images2 ={
   "7.png",
   "8.jpeg",
   "9.jpeg",

  }; var images3 ={
   "10.jpeg",
   "11.jpeg",
   "12.jpeg",

  };
   var images4 ={
   "13.jpeg",
   "14.jpeg",
   "15.jpeg",

  };var images5 ={
   "16.jpeg",
   "17.jpeg",
   "18.jpeg",

  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
        Column(
          children: [
            Container(child: 
            const Padding(
                        padding: EdgeInsets.only(left: 10,top:10,right: 300),
                        child: Text('18  Photos',style: TextStyle(fontSize: 20)),
                      ),
            ),
         
        
        
        Container(
          child: SizedBox(
                   height: 100,
                 width: double.maxFinite,
                   child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) { 
                 return  Container(
                margin: const EdgeInsets.only(right: 5,top: 5,) ,  
                width: 130,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  
                  image: DecorationImage(image:AssetImage("assets/${images.elementAt(index)}"),fit: BoxFit.cover),
              
                  
                ),
                  
                );
                 },
                
              ),
                   ),
                 ),
        ),
        Container(
          child: SizedBox(
                   height: 100,
                 width: double.maxFinite,
                   child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) { 
                 return  Container(
                margin: const EdgeInsets.only(right: 5,top: 5,) ,  
                width: 130,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.amber,
                  image: DecorationImage(image:AssetImage("assets/${images1.elementAt(index)}"),fit: BoxFit.cover),
              
                  
                ),
                  
                );
                 },
                
              ),
                   ),
                 ),
        ),
        Container(
          child: SizedBox(
                   height: 100,
                 width: double.maxFinite,
                   child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) { 
                 return  Container(
                margin: const EdgeInsets.only(right: 5,top: 5,) ,  
                width: 130,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.amber,
                  image: DecorationImage(image:AssetImage("assets/${images2.elementAt(index)}"),fit: BoxFit.cover),
              
                  
                ),
                  
                );
                 },
                
              ),
                   ),
                 ),
        ),
        Container(
          child: SizedBox(
                   height: 100,
                 width: double.maxFinite,
                   child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) { 
                 return  Container(
                margin: const EdgeInsets.only(right: 5,top: 5,) ,  
                width: 130,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.amber,
                  image: DecorationImage(image:AssetImage("assets/${images3.elementAt(index)}"),fit: BoxFit.cover),
              
                  
                ),
                  
                );
                 },
                
              ),
                   ),
                 ),
        ),
        Container(
          child: SizedBox(
                   height: 100,
                 width: double.maxFinite,
                   child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) { 
                 return  Container(
                margin: const EdgeInsets.only(right: 5,top: 5,) ,  
                width: 130,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.amber,
                  image: DecorationImage(image:AssetImage("assets/${images4.elementAt(index)}"),fit: BoxFit.cover),
              
                  
                ),
                  
                );
                 },
                
              ),
                   ),
                 ),
        ),
        Container(
          child: SizedBox(
                   height: 100,
                 width: double.maxFinite,
                   child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) { 
                 return  Container(
                margin: const EdgeInsets.only(right: 5,top: 5,) ,  
                width: 130,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.amber,
                  image: DecorationImage(image:AssetImage("assets/${images5.elementAt(index)}"),fit: BoxFit.cover),
              
                  
                ),
                  
                );
                 },
                
              ),
                   ),
                 ),
        ),
       
        ]),
      );
     
  
  }
}