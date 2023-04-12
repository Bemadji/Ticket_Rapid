import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const header = 'TicketRapid';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: header,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: header),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.add),
        onPressed: (){
        },
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur TicketRapid',
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                label: "Accueil",
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: "Recherche",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle)
            ),
          ],
          onTap: (int indexOfItem) {

          }
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "Administrateur",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("mhdjeg@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 23, 89, 187), child: Text("A", style: TextStyle(fontSize: 30, color: Colors.white,),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.car_rental),
              title: const Text(' Agence '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book_online),
              title: const Text(' Reserved'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text(' Settings '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
