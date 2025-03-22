import 'package:flutter/material.dart';
import 'package:send_whatsapp_message_without_saving_number/settings.dart';
import 'package:send_whatsapp_message_without_saving_number/whatsapp.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 0;
  final List<Widget> _children = [whatsapp(), settings(),];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        extendBody: true,

          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            
            ],
              backgroundColor: Colors.white,
  selectedItemColor: Colors.green,
  unselectedItemColor: Colors.black.withOpacity(0.5),
  type: BottomNavigationBarType.shifting,
  
          ),
        ));
  }
}
