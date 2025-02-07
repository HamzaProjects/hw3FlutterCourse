import 'package:ecommercehwthird/components/app_cart_icon.dart';
import 'package:ecommercehwthird/components/app_navigation_bar.dart';
import 'package:ecommercehwthird/components/app_new_icon.dart';
import 'package:flutter/material.dart';
import 'package:ecommercehwthird/classes/clothe.dart';
import 'package:ecommercehwthird/classes/shoes.dart';
class Favorites extends StatefulWidget {
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  IconData icon = Icons.view_list;
  List<String> clothCategory = ["Summer", "T-Shirts", "Shirts", "Jackets", "Trousers", "Caps"];

  List<Clothe> clothe = [
    Clothe(image: "assets/images/clothe/clothe4.jpg", price: 15.0, size: ["xl", "x", "xs", "s"], id: 4, color: "White and green"),
    Clothe(image: "assets/images/clothe/clothe2.jpg", price: 19.0, size: ["xl", "x", "xs", "s", "l"], id: 2, color: "Dark Red"),
    Clothe(image: "assets/images/clothe/clothe1.jpg", price: 22.0, size: ["xl", "x", "xs"], id: 1, color: "Black"),
    Clothe(image: "assets/images/clothe/clothe3.jpg", price: 34.0, size: ["xl", "x", "xs", "s"], id: 3, color: "Blue"),
  ];

  List<Shoes> shoes = [
    Shoes(image: "assets/images/shoes/shoes4.jpg", price: 20.0, size: [39, 40, 41, 42, 43, 44], id: 4, color: "White"),
    Shoes(image: "assets/images/shoes/shoes1.jpeg", price: 20.0, size: [39, 40, 41, 42], id: 1, color: "White and purple"),
    Shoes(image: "assets/images/shoes/shoes2.jpeg", price: 20.0, size: [39, 40, 43, 44], id: 2, color: "Green and Purple"),
    Shoes(image: "assets/images/shoes/shoes3.jpeg", price: 20.0, size: [39, 40, 42, 43, 44], id: 3, color: "Blue and pink"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 270,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20, top: 15),
                                child: Icon(Icons.search, size: 25,),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12, top: 90,),
                                child: Text("Favorites",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: clothCategory.length,
                                itemBuilder: (ctx, index){
                                final item = clothCategory[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 5, top: 10, bottom: 6,),
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade900,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(item, style: TextStyle(
                                          color: Colors.white,
                                        ),),
                                      ),
                                    ),
                                  );
                                },
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(top: 20, left: 10),
                                child: Row(
                                  spacing: 5,
                                  children: [
                                    Icon(Icons.filter_list_rounded, size: 24,),
                                    Text("Filters", style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),)
                                  ],
                                ),
                              ),),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 5,
                                    children: [
                                      Icon(Icons.trending_up_outlined, size: 24,),
                                      Text("Price: lowest to high", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          icon == Icons.view_list ? icon = Icons.view_module : icon = Icons.view_list;
                                          setState(() {

                                          });
                                        },
                                        child: Icon(icon,),
                                      ),
                                    ],
                                  ),
                                ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                ),
              ],
            ),
            Expanded(
              child: icon == Icons.view_list ? Padding(
                padding: const EdgeInsets.only(left: 18, right: 18,),
                child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: clothe.length,
                    itemBuilder: (ctx, index){
                      final item = clothe[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 100,
                          height: 120,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset( item.image, fit: BoxFit.cover,),
                                ),
                              ),
                              AppNewIcon(),
                              Positioned(
                                child: Text("Elegant Fashion",
                                  style: TextStyle(
                                    color: Colors.grey.shade900.withOpacity(0.3),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                left: 135,
                                top: 25,
                              ),
                              Positioned(
                                child: Text("Color: ", style:
                                TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),),
                                left: 135,
                                top: 60,
                              ),
                              Positioned(
                                child: Text(item.color, style:
                                TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.red.shade900,
                                ),),
                                left: 180,
                                top: 60,
                              ),
                              Positioned(
                                child: Text("\$", style:
                                TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 18,
                                ),),
                                left: 135,
                                top: 85,
                              ),
                              Positioned(
                                child: Text("${item.price}", style:
                                TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 18,
                                ),),
                                left: 148,
                                top: 85,
                              ),
                              Positioned(
                                child: Text("x", style:
                                TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black87.withOpacity(0.3),
                                  fontSize: 18,
                                ),),
                                left: 350,
                              ),
                              AppCartIcon(
                                left: 325,
                                top: 100,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ) : SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  padding: EdgeInsets.only(left: 15,right: 15 ,top: 10, bottom: 10),
                  itemCount: clothe.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 17,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (ctx, index){
                    final item = clothe[index];
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset( item.image, fit: BoxFit.cover,),
                          ),
                        ),
                        AppCartIcon(
                          left: 144,
                          top: 136,
                        ),
                        Positioned(
                          child: Text("Elegant Fashion",
                            style: TextStyle(
                              color: Colors.grey.shade900.withOpacity(0.3),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),),
                          top: 155,
                          left: 6,
                        ),
                        Positioned(
                          child: Text("Color: ", style:
                          TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontSize: 13
                          ),),
                          top: 180,
                          left: 6,
                        ),
                        Positioned(
                          child: Text(item.color, style:
                          TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.red.shade900,
                            fontSize: 13,
                          ),),
                          top: 180,
                          left: 45,
                        ),
                        Positioned(
                          child: Text("\$", style:
                          TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 15,
                          ),),
                          top: 197,
                          left: 6,
                        ),
                        Positioned(
                          child: Text("${item.price}", style:
                          TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 15,
                          ),),
                          top: 197,
                          left: 17,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
