import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/screens/meal_list.dart';




class MyDrawer extends StatefulWidget {
  const MyDrawer({ Key? key, required ListView child }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:const Color.fromARGB(255, 31, 30, 29),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromARGB(255, 200, 164, 72), Color.fromARGB(255, 240, 145, 51)]),
              ),
            child: Text("Kategoriler"),
            ),
            
            ListTile(
              title: const Text("Başlangıçlar"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const MealList(meals: meals)));
              },
            ),
             ListTile(
              title: const Text("Ara Sıcaklar"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const MealList(meals: meals)));
              },
            ),
            ListTile(
              title: const Text("Ana Yemekler"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const MealList(meals: meals)));
              },
            ),
            ListTile(
              title: const Text("Tatlılar"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const MealList(meals: meals)));
              },
            )
            ],)
    );
  }
}