import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/chatbot_page.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/profile_page.dart';

void main() {
  runApp( MyApp());
 
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  
  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
int _currentindex = 0;
PageController _pageController = PageController();
  List<Widget> _screens = [
    FirstPage(), ChatbotPage(), ProfilePage(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentindex=index;
    });
    _pageController.jumpToPage(index);
  }


  @override
  Widget build(BuildContext context) {
    var _onPageChanged;
    return Scaffold(
        body: PageView(
        controller: _pageController = PageController(),
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Shifting
          selectedItemColor: buttonColor,
          unselectedItemColor: Color.fromARGB(255, 202, 179, 218),
          backgroundColor: Color.fromARGB(255, 11, 1, 24),
          onTap: onTappedBar,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(
              label: 'Ana Sayfa',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: 'AKAYbot',
              icon: Icon(Icons.chat_bubble),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(Icons.person),
            ),
          ],
        
        ),
    );
  }
}