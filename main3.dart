import 'package:flutter/material.dart';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the Restaurant App!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Menu> menuList = [
    Menu('Es Teh', 'assets/es_teh.jpg', 'Rp 8,000'),
    Menu('Jus Jeruk', 'assets/jus_jeruk.jpg', 'Rp 12,000'),
    Menu('Kopi Hitam', 'assets/kopi_hitam.jpg', 'Rp 10,000'),
    Menu('Teh Hijau', 'assets/teh_hijau.jpg', 'Rp 8,000'),
    Menu('Smoothie Strawberry', 'assets/smoothie_strawberry.jpg', 'Rp 15,000'),
    Menu('Cappuccino', 'assets/cappuccino.jpg', 'Rp 12,000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: GridView.builder(
        itemCount: menuList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Implementasi logika saat menu diklik
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    menuList[index].imagePath,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    menuList[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(menuList[index].price),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class Menu {
  final String name;
  final String imagePath;
  final String price;

  Menu(this.name, this.imagePath, this.price);
}
