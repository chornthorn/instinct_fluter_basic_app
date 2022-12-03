import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                height: 2,
                backgroundColor: Colors.black,
                fontStyle: FontStyle.italic,
                fontFamily: 'Kantumruy Pro',
              ),
            ),
          ),
          SizedBox(
            height: 200,
          width: 200,
          child: Image.asset('assets/img/snack_example.png'),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text('Text label'),
                  action: SnackBarAction(
                    label: 'Action',
                    onPressed: () {},
                  ),
                ),
              );
            },
            child: Text('Show snackbar'),
          ),
        ],
      ),
      drawer: _buildDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          // account
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   // color: Colors.blue,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(
      //         icon: const Icon(Icons.home),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.history),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.favorite),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.light),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.person),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text('Drawer Header'),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text("thorn@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/250?image=9",
              ),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://picsum.photos/250?image=32",
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://picsum.photos/250?image=45",
                ),
              ),
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: const Icon(Icons.message),
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text('Item 1'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text('Item 2'),
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home Page'),
      // leading: const Icon(Icons.menu),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Text(
          'Bottom App Bar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
