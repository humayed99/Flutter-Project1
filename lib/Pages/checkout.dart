import 'package:flutter/material.dart';
import 'package:project_1/Pages/account.dart';
import 'package:project_1/Pages/cart.dart';
import 'package:project_1/Pages/products.dart';

class MyCheckoutPage extends StatelessWidget {
  const MyCheckoutPage({super.key});

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
            'CHECKOUT',
            style: TextStyle(
              color: Color(
                0xFF2d2d2d,
              ),
            ),
          ),
          actions: const <Widget>[
            Icon(
              Icons.close,
              color: Colors.black,
            ),
          ]),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(
              height: 13,
            ),
            Container(
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
                      height: 10,
                    ),
                    ListTile(
                      leading: const Text('DELIVER TO:'),
                      title: Row(
                        children: const [
                          Icon(
                            Icons.flag_circle,
                          ),
                          Text(
                            'Saudi Arabia',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ],
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_right_sharp),
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
                      title: const Text(
                        'MY BAG',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: const Text(
                        'View',
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                  children: const [
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      title: Text(
                        'PROMO/STUDENT CODE OR GIFT VOUCHERS/CARDS',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_sharp),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      height: 20,
                    ),
                    const Text(
                      'DELIVERY ADDRESS',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ListTile(
                      leading: const Icon(Icons.house_outlined),
                      title: const Text(
                        'POSTAL ADDRESS',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      trailing: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.black,
                              shadowColor: Colors.transparent),
                          child: const Text(
                            'CHANGE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    const Text(
                      'Sara Humayed',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'King Saud Street',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'House Number: 01',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'Riyadh',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'Riyadh',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      '612345',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'Saudi Arabia',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      '053 555 5555',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
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
