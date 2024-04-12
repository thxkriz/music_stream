
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uji_coba/widget/coffe_shop.dart';
import '../widget/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140, width: double.infinity, color:Color.fromARGB(255, 130, 114, 108)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/krisna.png")),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Hi , Selamat Datang!",
                                
                              ),
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari Coffee Shop Favoritmu",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Category(imagePath: "assets/images/coffee_tubruk.jpg", title: "Tubruk"),
                  Category(imagePath: "assets/images/espresso.jpg", title: "Espr"),
                  Category(imagePath: "assets/images/Latte.jpg", title: "Latte"),
                  Category(imagePath: "assets/images/Kopi_Biji.jpeg", title: "Biji"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Tempat Favorit ☕️",
              ),
            ),
            CoffeShop(
              imagePath: "assets/images/etnik.jpg",
              nameShop: "Etnik Coffee",
              rating: "4.8",
              jamBuka: "10.00 - 21.00",
            ),
            CoffeShop(
              imagePath: "assets/images/panamena.jpeg",
              nameShop: "Panamena Coffee Shop",
              rating: "4.9",
              jamBuka: "13.00 - 23.00",
            ),
            CoffeShop(
              imagePath: "assets/images/key.jpg",
              nameShop: "Key Coffee",
              rating: "4.7",
              jamBuka: "08.00 - 22.00",
            ),
          ],
        )),
      ),
    );
  }
}
