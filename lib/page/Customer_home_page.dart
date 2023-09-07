import 'package:flutter/material.dart';
import 'package:multi_store_app/page/homeScreen.dart';

class CustomerHomePage extends StatefulWidget {
  const CustomerHomePage({Key? key}) : super(key: key);

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();
}

class _CustomerHomePageState extends State<CustomerHomePage> {

  int  _selectIndex = 0;

  final List<Widget> _tabs = const [
    HomeScreen(),
    Center(child: Text('category'),),
    Center(child: Text('stores screen'),),
    Center(child: Text('cart screen'),),
    Center(child: Text('profile screen'),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'category'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'store'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        onTap: (index){
          setState(() {
            _selectIndex = index;
          });
        },
      ),
    );
  }
}
