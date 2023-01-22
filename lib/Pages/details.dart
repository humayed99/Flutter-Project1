import 'package:flutter/material.dart';
import 'package:project_1/Pages/account.dart';
import 'package:project_1/Pages/cart.dart';
import 'package:project_1/Pages/products.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFeeeeee,
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: const Color(
          0xFFffffff,
        ),
        title: const Text(
          'MY DETAILS',
          style: TextStyle(
            color: Color(
              0xFF2d2d2d,
            ),
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 12,
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
                      'FIRST NAME',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const TextField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'LAST NAME',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const TextField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'EMAIL ADDRESS',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const TextField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'DATE OF BIRTH',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    DropdownButtonFormField(items: const [], onChanged: (item) {}),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'MOSTLY INTERESTED IN:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (v) {},
                          shape: const CircleBorder(),
                        ),
                        const Text(
                          'Womenswear',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (v) {},
                          shape: const CircleBorder(),
                        ),
                        const Text(
                          'Menswear',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(45),
                  backgroundColor: const Color(0xFF2d2d2d),
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "SAVE CHANGES",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                    fontSize: 15,
                  ),
                ),
              ),
            )
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
