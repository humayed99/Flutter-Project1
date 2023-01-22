import 'package:flutter/material.dart';
import 'package:project_1/Pages/products.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'asos',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                letterSpacing: -6,
                fontSize: 45,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'JOIN',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF767676),
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          width: 118,
                        ),
                        Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF767676),
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      'EMAIL ADDRESS:',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF767676),
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      width: 325,
                      height: 45,
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color(0xFFacacac),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'PASSWORD:',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF767676),
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      width: 325,
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyProducts(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(37),
                        backgroundColor: const Color(0xFF2d2d2d),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox.fromSize(
                      size: const Size.fromHeight(20),
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox.fromSize(
                      size: const Size.fromHeight(20),
                      child: const Text(
                        "OR SIGN IN WITH...",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          letterSpacing: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 52,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: (ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(
                            37,
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF2d2d2d),
                        )),
                        child: Row(
                          children: const [
                            ImageIcon(
                              NetworkImage(
                                'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                              ),
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Text(
                              "GOOGLE",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: (ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(
                            37,
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF2d2d2d),
                        )),
                        child: Row(
                          children: const [
                            Icon(Icons.apple),
                            SizedBox(
                              width: 100,
                            ),
                            Text(
                              "APPLE",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: (ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(
                            37,
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF2d2d2d),
                        )),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.facebook,
                              color: Color(
                                0xFF1a77f2,
                              ),
                            ),
                            SizedBox(
                              width: 86,
                            ),
                            Text(
                              "FACEBOOK",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox.fromSize(
                      size: const Size.fromHeight(20),
                      child: const Text(
                        'Where has Twitter Gone?',
                        style: TextStyle(
                          letterSpacing: -1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 35)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
