import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var value =0;
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(
          child: Text(
        "Profile",
        textAlign: TextAlign.center,
        )),
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 60,
                      child: IconButton(
                        onPressed: () {},
                        icon: Badge(
                          padding: EdgeInsets.all(10),
                            badgeContent:Text('$value',
                              style: const TextStyle(fontSize: 13,color: Colors.white),) ,
                            badgeColor:Colors.green ,
                            animationType: BadgeAnimationType.scale,
                            child: Icon(Icons.mail,size: 40,)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          padding:EdgeInsets.all(30),
          children: const [
            DrawerHeader(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape:BoxShape.circle ,
                color: Colors.pink,
                  image: DecorationImage(
                      image: AssetImage("assets/images/epos.jpg",),
                      fit: BoxFit.fitHeight)
              ),
              child: Text(
                '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.directions,),
              title: Text('Route'),
            ),
            ListTile(
              leading: Icon(Icons.share,),
              title: Text('Share'),
            ),

          ],
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
            children: [
              // Padding(
              //     padding:const EdgeInsets.all(30),
              // child:
              // ),
              // Card(
              //   child:
              //   Badge(
              //     padding: const EdgeInsets.all(10),
              //       badgeContent: const Text("4",
              //         style: TextStyle(fontSize: 25,color: Colors.white),
              //       ),
              //       badgeColor: Colors.pink,
              //     position: BadgePosition.topEnd(),
              //     animationType: BadgeAnimationType.scale,
              //         child: const Icon(Icons.mail,size: 70,),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: (Image.asset(
                  "assets/images/epos.jpg",
                  height: 180,
                  width: 200,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                          Text(
                            "Epos Go Hybrid",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Edenburg,UK",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          // ],),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 80,),
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                    // Icon(
                    //   Icons.star,
                    //   color: Colors.red,
                    //   size: 40,
                    // ),
                    // Text(
                    //   "$value",
                    //   style: TextStyle(fontSize: 25),
                    // ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Badge(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              badgeContent:   Text("$value",
                                 // items[_currentIndex],
                                style: const TextStyle(fontSize: 20,color: Colors.white),) ,
                              badgeColor:Colors.pink ,
                              animationType: BadgeAnimationType.scale,
                              // position: BadgePosition.center(),
                              child:  Align(
                                  alignment: Alignment.topRight,
                                  child: Card(child:items[_currentIndex],)),
                              //
                            ),
                          ),
                        ])
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(
                          "Call",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 80,),
                    Column(
                      children: const [
                        Icon(
                          Icons.directions,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(
                          "Route",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 80,),
                    Column(
                      children: const [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  """
                      We are a disruptive technology provider to the Hospitality sector,offering powerful point of sale technology solutions including ePOS systems, self checkouts, online and contactless ordering, and payment solutions. We want to help hospitality providers,including restaurants, takeaways, pubs and bars, transform, scale and grow their business’ through technology. """,
                  style: TextStyle(fontSize: 23),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0) ,
                child: Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              value++;
                            });
                            debugPrint("button clicked");
                          },style:
                      ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(800, 40),),
                          child: const Text(
                            'Enter',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          )),
                    ),
                  ),
                ),
            ],
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
            value++;
          });
        },
      ),
      );
  }
}
