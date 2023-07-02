import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class uasScreen extends StatefulWidget {
  const uasScreen({Key? key}) : super(key: key);

  @override
  State<uasScreen> createState() => _uasScreenState();
}

class _uasScreenState extends State<uasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 50, 167, 126),
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 50, 167, 126)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.face_6_sharp,
                      size: 25,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              "Guest",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              "@user-xkjfksj",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text(
                              "xxx@gmail.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
              child: TextButton(
                onPressed: () {},
                child: Text('RESERVE'),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 43, 103, 82),
                    foregroundColor: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    elevation: 3),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
              trailing: Icon(Icons.keyboard_arrow_right_sharp),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.menu_book_rounded),
              title: Text("Menu"),
              trailing: Icon(Icons.keyboard_arrow_right_sharp),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.question_mark_sharp),
              title: Text("About Us"),
              trailing: Icon(Icons.keyboard_arrow_right_sharp),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.contact_page),
              title: Text("Contact"),
              trailing: Icon(Icons.keyboard_arrow_right_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
