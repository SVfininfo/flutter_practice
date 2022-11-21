// //Material Package |Import Material package
// mateApp
// Material App |Create a new Material App
// scfAll
// Scaffold |Creates a Scaffold containing an Appbar, BottomNavigationBar and FloatingActionButton
// scfAppBar
// Scaffold |Creates a Scaffold containing an Appbar//

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const badge_widget());

class badge_widget extends StatelessWidget {
  final SystemUiOverlayStyle _style =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);

  const badge_widget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(_style);
    return MaterialApp(
      home: badge_widgetStatefulWidget(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class badge_widgetStatefulWidget extends StatefulWidget {
  const badge_widgetStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _badge_widgetState();
  }
}

class _badge_widgetState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home :Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Badge Widget",textAlign: TextAlign.center,)),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Badge(
                    padding: const EdgeInsets.all(8),
                    badgeContent: const Text("34",style: TextStyle(color: Colors.white),),
                    badgeColor: Colors.pink,
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.favorite_border,size: 60,)
                      // Text("Badge_Widget",
                      //   style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Colors.black),),
                    )),
              ),
              Center(
                child: Badge(
                    padding: const EdgeInsets.all(8),
                    // position: BadgePosition.bottomStart(),
                    // badgeContent: const Text("56",style: TextStyle(color: Colors.white),),
                    badgeColor: Colors.blue,

                    child:  Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Image.asset("assets/images/epos.jpg",
                        height: 100,
                          width: 100,
                        )
                        // Icon(Icons.favorite,size: 60,)
                      // Text("Badge_Widget",
                      //   style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Colors.black),),
                    )),
              ),
              Center(
                child: Badge(
                  padding: const EdgeInsets.symmetric(horizontal: 3,vertical:1),
                    shape: BadgeShape.square,
                    // position: BadgePosition.topEnd(),
                    badgeContent: const Text("no",style: TextStyle(color: Colors.white),),
                    badgeColor: Colors.green,
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text("Badge_Widget",
                        style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold,color: Colors.black),),
                    )),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
