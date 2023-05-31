// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final screens = const [
    Center(
      child: Text(
        'Lobby',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'Message',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'Task',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'Achievment',
        style: TextStyle(fontSize: 72),
      ),
    ),
    Center(
      child: Text(
        'My Profile',
        style: TextStyle(fontSize: 72),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF1DD),
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Color(0xffFB9600),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          labelTextStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.transparent,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) =>
              setState(() => _selectedIndex = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.rocket_launch_outlined),
              selectedIcon: Icon(
                Icons.rocket_launch,
                color: Colors.white,
              ),
              label: 'Lobby',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              label: 'Message',
            ),
            NavigationDestination(
              icon: Icon(Icons.task_outlined),
              selectedIcon: Icon(
                Icons.task,
                color: Colors.white,
              ),
              label: 'Task',
            ),
            NavigationDestination(
              icon: Icon(Icons.star_outline_outlined),
              selectedIcon: Icon(
                Icons.star,
                color: Colors.white,
              ),
              label: 'Achievment',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
