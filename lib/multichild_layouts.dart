import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          padding:EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
                child: Text(
                  'headrer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.phone_rounded,),
              title: Text('phone'),
            ),

          ],
        ),
      ),
      body: Card(
        child: Column(
          children: [
            // Text("$value"),

          ],
        ),
      ),
    );
  }
}
