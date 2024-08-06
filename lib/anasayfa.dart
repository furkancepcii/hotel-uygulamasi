import 'package:flutter/material.dart';
import 'package:proje/pages/add.dart';
import 'package:proje/pages/heart.dart';
import 'package:proje/pages/home.dart';
import 'package:proje/pages/settings.dart';

class anasayfaPage extends StatefulWidget {
  const anasayfaPage({super.key});

  @override
  State<anasayfaPage> createState() => _anasayfaPageState();
}

class _anasayfaPageState extends State<anasayfaPage> {
  List pages =[
    const homePage(),
    const addPage (),
    const heartPage(),
    const settingsPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body:pages[currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left:30,right: 30),
          child: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
           type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: IconThemeData(color: Colors.blueGrey.shade200),
            unselectedIconTheme: IconThemeData(color: Colors.blueGrey.shade100),
            elevation: 0,
        
            items: const [
            BottomNavigationBarItem(label: '',icon:Icon(Icons.home_outlined,)),
             BottomNavigationBarItem(label: '',icon: Icon(Icons.add,)),
              BottomNavigationBarItem(label: '',icon: Icon(Icons.message_outlined,)),
               BottomNavigationBarItem(label: '',icon: Icon(Icons.settings,)),
          ]),
        )
        
        
      );
    
  }
}
