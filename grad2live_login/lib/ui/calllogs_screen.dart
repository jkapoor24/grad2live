import 'package:flutter/material.dart';

class CalllogsScreen extends StatefulWidget {
  static const String id = "calllogs_screen";
  @override
  State<StatefulWidget> createState() {
    return _CalllogsScreen();
  }
}

class _CalllogsScreen extends State<CalllogsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          "Call Log",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.deepOrange,
              ),
              onPressed: () {
                //action
              })
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.deepOrange, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              "Contact",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ) //Icon
            ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.dialpad,
              color: Colors.black,
            ),
            title: Text(
              "Dial Pad",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ) //Icon
            ),
      ] //item
              ),
      body: getListView(),
    );
  }

  List<String> getListElements() {
    var items = List<String>.generate(1000, (counter) => "Item $counter");
    return items;
  }

  Widget getListView() {
    var listItems = getListElements();
    var listViews = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(
          Icons.call,
          color: Colors.deepOrange,
        ),
        title: Text(
          listItems[index],
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          "Number ",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 15,
        ),
        onTap: () {
          //action
        },
      );
    });
    return listViews;
  }
}
