import 'package:flutter/material.dart';
import 'package:project_1/Pages/account.dart';
import 'package:project_1/Pages/cart.dart';
import 'package:project_1/Pages/info.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFffffff,
      ),
      appBar: AppBar(
        backgroundColor: const Color(
          0xFFffffff,
        ),
        title: const Text(
          'New in: Face + Body',
          style: TextStyle(
            color: Color(
              0xFF2d2d2d,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(children: const [
                Text(
                  'SORT',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                //DropdownButtonFormField(items: const [], onChanged: (item) {}),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'FILTER',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'The best accessory to any outfit is you.',
              textAlign: TextAlign.center,
            ),
            Expanded(
                child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyProductInfo(),
                          ),
                        );
                      },
                    )),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey,
                  child: const Text(''),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey,
                  child: const Text(''),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey,
                  child: const Text(''),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey,
                  child: const Text(''),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey,
                  child: const Text(''),
                ),
              ],
            ))
          ]),
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
