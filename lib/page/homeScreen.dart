 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const CupertinoSearchTextField(),
          bottom: TabBar(
            tabs: [
              RepeatedTab(),
              RepeatedTab(),
              RepeatedTab(),
              
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('men Screens'),),
            Center(child: Text('women Screens'),),
            Center(child: Text('jeans Screens'),),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  
  const RepeatedTab({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        'Men',
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}