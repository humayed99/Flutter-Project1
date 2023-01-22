import 'package:flutter/material.dart';
import 'package:project_1/Pages/cart.dart';
import 'package:project_1/Pages/details.dart';
import 'package:project_1/Pages/products.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFeeeeee,
      ),
      appBar: AppBar(
          backgroundColor: const Color(
            0xFFffffff,
          ),
          title: const Text(
            'MY ACCOUNT',
            style: TextStyle(
              color: Color(
                0xFF2d2d2d,
              ),
            ),
          ),
          actions: const <Widget>[
            Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ]),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 5,
              ),
              decoration: const BoxDecoration(
                color: Color(
                  0xffffffff,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      'Hi,',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Sara Humayed',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Text(
                        'My orders',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                    ListTile(
                      leading: Icon(Icons.card_giftcard_outlined),
                      title: Text(
                        'ASOS Premier',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 5,
              ),
              decoration: const BoxDecoration(
                color: Color(
                  0xffffffff,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: const Icon(Icons.info_outlined),
                      title: const Text(
                        'My details',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyDetails(),
                          ),
                        );
                      },
                    ),
                    const ListTile(
                      leading: Icon(Icons.lock_outline),
                      title: Text(
                        'Change password',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                    const ListTile(
                      leading: Icon(Icons.house_outlined),
                      title: Text(
                        'Address book',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                    const ListTile(
                      leading: Icon(Icons.payment_outlined),
                      title: Text(
                        'Payment methods',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                    const ListTile(
                      leading: Icon(Icons.notification_important_outlined),
                      title: Text(
                        'Notifications',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                    const ListTile(
                      leading: Icon(Icons.chat_bubble_outline_outlined),
                      title: Text(
                        'Contact preferences',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          selectedLabelStyle: const TextStyle(color: Colors.grey),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedIconTheme: const IconThemeData(color: Colors.black),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.adb_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyProducts(),
                      ),
                    );
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(
                    Icons.manage_search_outlined,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyProducts(),
                      ),
                    );
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyShoppingCart(),
                      ),
                    );
                  },
                ),
                label: ""),
            const BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: ""),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(
                  Icons.person_outline,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAccount(),
                    ),
                  );
                },
              ),
              label: "",
            ),
          ]),
    );
  }
}
