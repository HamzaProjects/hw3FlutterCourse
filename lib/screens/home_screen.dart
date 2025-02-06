import 'package:ecommercehwthird/classes/clothe.dart';
import 'package:ecommercehwthird/classes/shoes.dart';
import 'package:ecommercehwthird/components/app_navigation_bar.dart';
import 'package:ecommercehwthird/components/app_new_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    List<Clothe> clothe = [
      Clothe(image: "assets/images/clothe/clothe4.jpg", price: 20.0, size: ["xl", "x", "xs", "s"], id: 4, color: "White and green"),
      Clothe(image: "assets/images/clothe/clothe2.jpg", price: 20.0, size: ["xl", "x", "xs", "s", "l"], id: 2, color: "Dark Red"),
      Clothe(image: "assets/images/clothe/clothe1.jpg", price: 20.0, size: ["xl", "x", "xs"], id: 1, color: "Black"),
      Clothe(image: "assets/images/clothe/clothe3.jpg", price: 20.0, size: ["xl", "x", "xs", "s"], id: 3, color: "Blue"),
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
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            Row(
              children: [
                Expanded(child: Image.asset("assets/images/shopping.jpg",),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18,),
                          child: Text("Clothe", style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                            color: Colors.red.shade600.withOpacity(0.8),
                          ),),
                        )
                      ],),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18,),
                          child: Text("You've never seen it before!", style: TextStyle(
                            fontSize: 10,
                          ),),
                        )
                      ],),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:
                  Row(
                    children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18,),
                    child: Text("View all", style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold,
                    ),),
                  )
                ],),)
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                      height: 220,
                      child: ListView.builder(scrollDirection: Axis.horizontal ,itemCount: clothe.length,itemBuilder: (ctx, index){
                        final item = clothe[index];
                        return InkWell(
                          onTap: (){
                            showModalBottomSheet(context: context, builder: (context){
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 40,),
                                            child: Text("Select Size", style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Expanded(
                                      flex: 2,
                                      child: GridView.builder(
                                        padding: EdgeInsets.only(left: 40, right: 40,),
                                        itemCount: item.size.length,
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 17,
                                          mainAxisSpacing: 17,
                                          childAspectRatio: 3.1,
                                        ),
                                        itemBuilder: (ctx, index){
                                          return Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8)
                                            ),
                                            child: Text(item.size[index], style: TextStyle(fontSize: 16,),),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20, left: 20,),
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade600.withOpacity(0.2),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 40, right: 15),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 10,
                                                child: Text(
                                                  "Size info",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                  ),
                                                ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                ">",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20, left: 20,),
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade600.withOpacity(0.2),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 40, right: 40),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: InkWell(
                                                child: Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red.shade900,
                                                    borderRadius: BorderRadius.circular(30),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "GO TO FAVORITES",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                onTap: (){
                                                  Navigator.pushNamed(context, "/favorites_lists");
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  child: Image.asset(item.image),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 20,
                                child: AppNewIcon(),
                              )
                            ],
                          ),
                        );
                      }),
                    ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18,),
                          child: Text("Shoes", style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                            color: Colors.red.shade600.withOpacity(0.8),
                          ),),
                        )
                      ],),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 18,),
                          child: Text("You've never seen it before!", style: TextStyle(
                            fontSize: 10,
                          ),),
                        )
                      ],),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18,),
                        child: Text("View all", style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,
                        ),),
                      )
                    ],),)
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 220,
                    child: ListView.builder(scrollDirection: Axis.horizontal ,itemCount: shoes.length,itemBuilder: (ctx, index){
                      final item = shoes[index];
                      return InkWell(
                        onTap: (){
                          showModalBottomSheet(context: context, builder: (context){
                            return Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 40,),
                                        child: Text("Select Size", style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Expanded(
                                  flex: 2,
                                  child: GridView.builder(
                                    padding: EdgeInsets.only(left: 40, right: 40,),
                                    itemCount: item.size.length,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 17,
                                      mainAxisSpacing: 17,
                                      childAspectRatio: 3.1,
                                    ),
                                    itemBuilder: (ctx, index){
                                      return Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                        child: Text(item.size[index].toString(), style: TextStyle(fontSize: 15,),),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20, left: 20,),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade600.withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40, right: 15),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: Text(
                                            "Size info",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            ">",
                                            style: TextStyle(
                                              fontSize: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20, left: 20,),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade600.withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40, right: 40),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            child: Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.red.shade900,
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "GO TO FAVORITES",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            onTap: (){
                                              Navigator.pushNamed(context, "/favorites_lists");
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                child: Image.asset(item.image),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 20,
                              child: AppNewIcon(),
                            )
                          ],
                        ),
                      );
                    }),
                  ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
