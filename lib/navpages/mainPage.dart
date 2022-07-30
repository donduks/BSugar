import 'package:BSugar/navpages/convert2.dart';
import 'package:BSugar/pages/check2.dart';
import 'package:BSugar/pages/welcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'check.dart';
import 'convert.dart';


class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

   List pages = [
       WelcomPage(),
       Check(),
       Check2(),
       Convert(),
       Convert2(),
     ];
     int currentIndex=0;
     
     void onTap(int index){
   
       setState(() {
         
         currentIndex = index;
       });
   
   
     }
   
   
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: pages[currentIndex],
         bottomNavigationBar: BottomNavigationBar(
           
           type: BottomNavigationBarType.shifting,
           onTap: onTap,
           currentIndex: currentIndex,
           selectedItemColor: Colors.black,
           unselectedItemColor: Colors.black12,
           
           items: [
             BottomNavigationBarItem(
               label: "Home",
               icon: Icon(Icons.apps),
             ),
             BottomNavigationBarItem(
               label: "mmol/L",
               icon: Icon(Icons.person),
             ),
               BottomNavigationBarItem(
               label: "mg/dL",
               icon: Icon(Icons.person),
             ),
             BottomNavigationBarItem(
               label: "mmol/L Convert",
               icon: Icon(Icons.ballot),
             ),
              BottomNavigationBarItem(
               label: "mg/dL Convert",
               icon: Icon(Icons.ballot),
             ),
           ],
         ),
       );
     }
   }
   
