import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 2;
  final items = [
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.home,size: 90,),
        Text("Home")],),),
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.search,size: 90,),
        Text("Search")],),),
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.video_collection,size: 90,),
        Text("Media")],),),
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.favorite_border,size: 90,),
        Text("Notifications")],),),
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(Icons.account_circle,size: 90,),
        Text("Profile")],),),
    // const Center(child: Text('Home'),),
    // const Center(child: Text('Search'),),
    // const Center(child: Text('Media'),),
    // const Center(child: Text('Favs'),),
    // const Center(child: Text('Profile'),),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Bottom Nav Bar",)),
          backgroundColor: Colors.pink,
        ),
        body: Padding(
          padding: const EdgeInsets.all(250.0),
          child: Card(
            elevation: 50,
                child: items[_currentIndex],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white ,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 35,
          items:  const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label:"Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label:"Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label:"Media",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label:"notifi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label:"Profile",
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;

            });
          },
        ),
      ),
    );
  }
}
