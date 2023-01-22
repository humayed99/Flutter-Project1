import 'package:flutter/material.dart';
import 'package:project_1/Pages/account.dart';
import 'package:project_1/Pages/checkout.dart';
import 'package:project_1/Pages/products.dart';

class MyShoppingCart extends StatelessWidget {
  const MyShoppingCart({super.key});

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
        surfaceTintColor: const Color(
          0xffffffff,
        ),
        title: const Text(
          'BAG',
          style: TextStyle(
            color: Color(
              0xFF2d2d2d,
            ),
          ),
        ),
      ),
      body: SafeArea(
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
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '2 items: Total (excluding delivery) SAR 400.00',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'My Orders',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      'ASOS Premier',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
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
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyCheckoutPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF008849),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "CHECKOUT",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2d2d2d),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "APPLE PAY",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
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
