import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var value =0;
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
                  // Positioned(
                  //     right: 3,
                  //     top: 3,
                  //     child: Badge(
                  //       badgeContent:Text('$value'),
                  //       child: const Icon(
                  //         Icons.settings,
                  //       ),
                  //     )),
                ],
              ),
            ),
          ]
      ),
        // Badge(
        //   padding: const EdgeInsets.all(10),
        //   badgeContent:  const Text("5",
        //     style: TextStyle(fontSize: 20,color: Colors.white),) ,
        //   badgeColor:Colors.pink ,
        //   // position: BadgePosition.center(),
        //   child: const Align(
        //       alignment: Alignment.topRight,
        //       child: Icon(Icons.mail,size: 70,)),
        //   //
        // ),
        // Badge(
        //   badgeContent: Text('10'),
        //   child: Icon(Icons.email),
        // ),
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
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.center,

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
                  height: 250,
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
                                style: const TextStyle(fontSize: 20,color: Colors.white),) ,
                              badgeColor:Colors.pink ,
                              animationType: BadgeAnimationType.scale,
                              // position: BadgePosition.center(),
                              child: const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.mail,size: 70,)),
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
                      We are a disruptive technology provider to the Hospitality sector,offering powerful point of sale technology solutions
              including ePOS systems, self checkouts, online and contactless ordering, and payment solutions. We want to help hospitality
              providers,including restaurants, takeaways, pubs and bars, transform, scale and grow their business’ through technology. """,
                  style: TextStyle(fontSize: 23),
                ),
              ),
              //     Padding(
              //     padding: const EdgeInsets.all(10.0),
              //     child: Badge(
              //       alignment: Alignment.center,
              //       padding: const EdgeInsets.all(10),
              //       badgeContent:   Text("$value",
              //         style: const TextStyle(fontSize: 20,color: Colors.white),) ,
              //       badgeColor:Colors.pink ,
              //       // position: BadgePosition.center(),
              //       child: const Align(
              //           alignment: Alignment.topRight,
              //           child: Icon(Icons.mail,size: 70,)),
              //       //
              //     ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0) ,
                child: Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Badge(
                      padding: const EdgeInsets.all(10),
                      badgeContent:   Text("$value",
                        style: const TextStyle(fontSize: 20,color: Colors.white),) ,
                      badgeColor:Colors.green ,
                      animationType: BadgeAnimationType.scale,
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
              )
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 2.0) ,
        //
        //   child: Expanded(
        //     child: Align(
        //       alignment: Alignment.bottomCenter,
        //       child: ElevatedButton(
        //           onPressed: () {
        //             debugPrint("button clicked");
        //           },style:
        //       ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(32.0)),
        //         minimumSize: const Size(800, 40),
        //       ),
        //           child: const Text(
        //             'Enter',
        //             style: TextStyle(
        //               fontSize: 30,
        //             ),
        //           )),
        //     ),
        //   ),
        // )

      );
  }
}
