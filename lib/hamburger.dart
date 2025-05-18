import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hamburger/category.dart';
import 'package:hamburger/hambugers_list.dart';
import 'package:hamburger/header.dart';

class Hamburger extends StatefulWidget {
  const Hamburger({super.key});

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Deliver Me"),
            leading: IconButton(onPressed: () {}, 
            icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
            ],
          ),
          HeaderPage(),
          Categories(),
          HamburgerList(),
          HamburgerList(),
          HamburgerList(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        color: Colors.teal,
        child: Padding(padding: EdgeInsets.all(5),
        child: GNav(
          
          padding: EdgeInsets.all(15),
          tabBackgroundColor: Colors.green.shade300,
        gap: 5,
        tabs: [
        GButton(icon: Icons.home,text: "Home",onPressed: (){},),
        
        GButton(icon: Icons.favorite,text: "Favorite",onPressed: (){},),
        GButton(icon: Icons.food_bank,text: "Ordar",onPressed: (){},),
        GButton(icon: Icons.settings,text: "Setting",onPressed: (){},),

      ])
      ,),
      )
    );
  }
}
