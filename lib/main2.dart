// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'named routes', initialRoute: '/', routes: {
    '/': (context) => const MyApp(),
    '/food': (context) => const Food(),
  }));
}

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        toolbarHeight: 120,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: const Text("test"),
            )
          ],
        ),
      )),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 120,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Image(
                  image: AssetImage("images/grab.png"),
                  width: 80,
                  height: 50,
                ),
              ),
              Title(
                  color: Colors.white,
                  child: const Text('Selamat Datang Di Grab, Fariz'))
            ],
          ),
          backgroundColor: Colors.black87,
          // leading: Builder(builder: (BuildContext context){
          //   return IconButton(
          //     icon: Icon(Icons.arrow_back)
          //     onPressed: (){Scaffold.of(context).openDrawer();},
          //     tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          //   ),
          // },
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/food');
                                  },
                                  child: const Text('test')),
                              const Image(
                                image: AssetImage("images/feature/food.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Makanan',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/bike.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Motor',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/car.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Oto',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image:
                                    AssetImage("images/feature/delivery.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Express',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/grosir.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Balanjo',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/pulsa.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Pulsa',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/bill.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Tagihan',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage(
                                    "images/feature/subscription.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Langganan',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image:
                                    AssetImage("images/feature/giftcard.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Hadiah',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/rent.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Sewa',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 50,
                          height: 70,
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage("images/feature/hotel.png"),
                                width: 60,
                              ),
                              Title(
                                  color: Colors.black,
                                  child: const Text(
                                    'Hotel',
                                    style: TextStyle(fontSize: 10),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              // height: 200,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                width: 120,
                                height: 60,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Saldo'),
                                        Text(
                                          'Rp 1.192',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/feature/bill.png'),
                                          width: 30,
                                        )
                                      ],
                                    )
                                  ],
                                )

                                // color: Colors.white70,
                                ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                width: 190,
                                height: 60,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Kasih Bintang'),
                                        Text(
                                          'Ayam Geprek Cania...',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/feature/food.png'),
                                          width: 30,
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                width: 150,
                                height: 60,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Top Up'),
                                        Text(
                                          'di Indomaret',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image:
                                              AssetImage('images/facebook.png'),
                                          width: 20,
                                        )
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                width: 140,
                                height: 60,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Poin'),
                                        Text(
                                          '0',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image:
                                              AssetImage('images/facebook.png'),
                                          width: 20,
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // height: 200,
              child: Column(
                children: [
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                                // height: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pesan Sekarang ->',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'images/feature/hotel.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Gajian Naik GrabBike Hemat Mulai 5rb*',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )

                                // color: Colors.white70,
                                ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Beli Sekarang ->',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image(
                                      image:
                                          AssetImage('images/feature/bike.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      '3 Ayam, Nasi, Coca-Cola Cuma 79rb',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mainkan Sekarang ->',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image(
                                      image:
                                          AssetImage('images/feature/food.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Sambil nunggu match-nya bisa main Vidio G...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // height: 300,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Rekomendasi Restoran Untukmu ->',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 190,
                    // width: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 140,
                                // height: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text('Pesan Sekarang ->'),
                                    Image(
                                      image: AssetImage(
                                          'images/feature/hotel.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Gajian Naik GrabBike Hemat Mulai 5rb*',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )

                                // color: Colors.white70,
                                ),
                            Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text('Beli Sekarang ->'),
                                    Image(
                                      image:
                                          AssetImage('images/feature/bike.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      '3 Ayam, Nasi, Coca-Cola Cuma 79rb',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                            Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text('Mainkan Sekarang ->'),
                                    Image(
                                      image:
                                          AssetImage('images/feature/food.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Sambil nunggu match-nya bisa main Vidio G...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                            Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text('Mainkan Sekarang ->'),
                                    Image(
                                      image:
                                          AssetImage('images/feature/food.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Sambil nunggu match-nya bisa main Vidio G...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                            Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text('Mainkan Sekarang ->'),
                                    Image(
                                      image:
                                          AssetImage('images/feature/food.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Sambil nunggu match-nya bisa main Vidio G...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                            Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.black26,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                // width: 400,
                                // height: 300,
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Text('Mainkan Sekarang ->'),
                                    Image(
                                      image:
                                          AssetImage('images/feature/food.png'),
                                      width: 100,
                                    ),
                                    Text(
                                      'Sambil nunggu match-nya bisa main Vidio G...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black45,
          elevation: 3,
          iconSize: 25,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'OVO',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
            ),
          ],
        ),
      ),
    );
  }
}
