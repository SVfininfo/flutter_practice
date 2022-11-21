import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 1,
            title: const Center(
              child: Text(
                'List',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          body: Container(
              alignment: Alignment.center,
              child: Column(
                  children: [
                  getListView(), ]
              )),
        ));
  }
}

List<String> getListElements() {
  var items = List<String>.generate(11, (index) => "Item - $index");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(listItems[index]),
      );
    },
  );
  return listView;
}
