import 'package:flutter/material.dart';
import 'package:hokela_app/screens/CompletedScreen.dart';
import 'package:hokela_app/screens/OnGoingScreen.dart';
import 'package:hokela_app/screens/StartedScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Text("Started")),
              Tab(icon: Text("On Going")),
              Tab(icon: Text("Completed")),
            ],
          ),
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        body: const TabBarView(
          
          children: [
            StartedScreen(),
            OnGoingScreen(),
            CompletedScreen(),
          ],
        ),
      ),
    );
  }
}
