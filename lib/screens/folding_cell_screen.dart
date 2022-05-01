import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_folding_cell_module/model/food_category_details_model.dart';
import 'package:flutter_folding_cell_module/utils/trapezium_clipper_decoration.dart';
import '../folding_cell.dart';

class FoldingCellScreen extends StatefulWidget {
  const FoldingCellScreen({Key? key}) : super(key: key);

  @override
  _FoldingCellScreenState createState() => _FoldingCellScreenState();
}

class _FoldingCellScreenState extends State<FoldingCellScreen> {
  List<FoodCategoryDetailsModel>? foodCategoryDetailLists;

  @override
  void initState() {
    super.initState();
    foodCategoryDetailLists = [
      FoodCategoryDetailsModel( "assets/images/burger.png", "Burger", "99", "Manchester United", "Portugal"),
      FoodCategoryDetailsModel( "assets/images/sushi.png", "Sushi", "120", "Tottenham Hotspur", "England"),
      FoodCategoryDetailsModel( "assets/images/pizza.png", "Pizza", "150", "Manchester City", "Belgium"),
      FoodCategoryDetailsModel( "assets/images/sandwich.png", "Sandwich", "70", "Leicester City", "England"),
      FoodCategoryDetailsModel( "assets/images/mozzarella.png", "Mozzarella Stics", "180", "Liverpool", "Netherlands"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.deepPurple.shade900.withOpacity(0.8),
          title: const Text('Folding Cell ListView Example',style: TextStyle(color: Colors.white , fontSize: 17),),
      actions: [
        // IconButton(
        //   onPressed: (){},
        //   icon: const Icon(Icons.notifications_none),
        // color: Colors.black,
        // )
      ],),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(27)),
                  ),
                  hintText: "Search your product here",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list_outlined)
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: foodCategoryDetailLists!.length,
                itemBuilder: (context, index) {
                  return SimpleFoldingCell.create(
                    padding: EdgeInsets.all(5),
                    borderRadius: 12,

                    frontWidget: buildListWidget(index),
                    innerWidget: buildDetailsWidget(index),
                    secondInnerWidgets: buildDetailsWidget(index),
                    cellSize: Size(MediaQuery.of(context).size.width, 125),
                    animationDuration: Duration(milliseconds: 200),
                    onOpen: () {},
                    onClose: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListWidget(int index) {
    var getFoodDetails = foodCategoryDetailLists![index];
    return Builder(
      builder: (BuildContext context) {
        return InkWell(
          onTap: (){
            final foldingCellState = context.findAncestorStateOfType<SimpleFoldingCellState>();
                print("foldingCellState before toggle is $foldingCellState");
                foldingCellState?.toggleFold();
                print("foldingCellState after toggle is $foldingCellState");
                setState(() {
                  print("index is $index");
                  //buildRest(index);
                });
          },
          child: Container(
            color:  Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 125,
                  decoration: BoxDecoration(
                    //image: DecorationImage(image: AssetImage(getFoodDetails.productImg))
                    color: Colors.deepPurple.shade900.withOpacity(0.8)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("\$14",style: TextStyle(color: Colors.white),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,0,0,0),
                        child: Text("TODAY",style: TextStyle(color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("05:10 PM",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,2,2,2),
                          child: Row(
                            //mainAxisSize: MainAxisSize.max,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: Cross,
                            children: [
                              Text(
                                getFoodDetails.productName,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                              Spacer(),
                              Expanded(

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8,0,0,8),
                                  child: Icon(Icons.favorite, color: Colors.pink,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5.0,0,5,9),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                    width: 1.0,
                                  color: Colors.black),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("-"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5.0,0,5,9),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                      width: 1.0,
                                      color: Colors.black),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("1"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5.0,0,5,9),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                      width: 1.0,
                                      color: Colors.black),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("+"),
                                ),
                              ),
                            )
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0,2,2),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [trapeziumClippers(context, "Rs. ${getFoodDetails.price}",)],
                        ),
                      ),
                      //),
                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: Row(
                      //     children: [
                      //       Text("data"),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),

                // SizedBox(height: 15),
                // ElevatedButton(
                //   child: Text("Expand", style: TextStyle(color: Colors.orangeAccent, fontSize: 22)),
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.white,
                //   ),
                //   onPressed: () {
                //     final foldingCellState = context.findAncestorStateOfType<SimpleFoldingCellState>();
                //     print("foldingCellState before toggle is $foldingCellState");
                //     foldingCellState?.toggleFold();
                //     print("foldingCellState after toggle is $foldingCellState");
                //     setState(() {
                //       print("index is $index");
                //       //buildRest(index);
                //     });
                //   },
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Widget buildRest(int index)
  // {
  //   var getSoccerPlayerDetails = foodCategoryDetailLists![index];
  //   return Builder(
  //     builder: (context) {
  //       return Container(
  //           color: Colors.pinkAccent,
  //           padding: EdgeInsets.all(12),
  //           child: Column(
  //             children: [
  //               SizedBox(height: 15),
  //               Align(
  //                 alignment: Alignment.center,
  //                 child:  Container(
  //                   width: 130,
  //                   height: 125,
  //                   decoration: BoxDecoration(
  //                       image: DecorationImage(image: AssetImage(getFoodDetails.productImg))
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 15),
  //               Align(
  //                 alignment: Alignment.center,
  //                 child: Text(
  //                   getSoccerPlayerDetails.clubName,
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 25,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 15),
  //               Align(
  //                 alignment: Alignment.center,
  //                 child: Text(
  //                   getSoccerPlayerDetails.countryName,
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 25,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 25),
  //               // ElevatedButton(
  //               //   child: Text("Shrink", style: TextStyle(color: Colors.pinkAccent, fontSize: 22)),
  //               //   style: ElevatedButton.styleFrom(
  //               //     primary: Colors.white,
  //               //   ),
  //               //   onPressed: () {
  //               //     final foldingCellState = context.findAncestorStateOfType<SimpleFoldingCellState>();
  //               //     foldingCellState?.toggleFold();
  //               //   },
  //               // ),
  //             ],
  //           )
  //       );
  //     },
  //   );
  // }

  Widget buildDetailsWidget(int index) {
    var getFoodCatDetails = foodCategoryDetailLists![index];
    return Builder(
      builder: (context) {
        return Container(
            //color: Colors.pink,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),]
            ),
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                //SizedBox(height: 15),
                Align(
                  alignment: Alignment.center,
                  child:  Container(
                    width: 130,
                    height: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(getFoodCatDetails.productImg))
                    ),
                  ),
                ),
                // SizedBox(height: 15),
                // Align(
                //   alignment: Alignment.center,
                //   child: Text(
                //     getFoodCatDetails.clubName,
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 25,
                //     ),
                //   ),
                // ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(getFoodCatDetails.productName,style: TextStyle(color: Colors.black),),
                    Text("Rs. ${getFoodCatDetails.price}",),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'by ',
                              style: TextStyle(color: Colors.grey)
                        ),
                        TextSpan(
                            text: 'Pizza Hut',
                            style: TextStyle(color: Colors.black)
                        )
                      ]
                    )
                  ),
                ),
                // Align(
                //     alignment: Alignment.topLeft,
                //     child: Text("by Pizza Hut")),
                // Align(
                //   alignment: Alignment.center,
                //   child: Text(
                //     getFoodCatDetails.countryName,
                //     style: TextStyle(
                //       color: Colors.pink,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 15,
                //     ),
                //   ),
                // ),
                //SizedBox(height: 25),

                // Align(
                //   alignment: Alignment.center,
                //   child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-",style: TextStyle(color: Colors.black),),
                      ),
                      ElevatedButton(
                        child: Text("Add to Bag", style: TextStyle(color: Colors.pinkAccent, fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          final foldingCellState = context.findAncestorStateOfType<SimpleFoldingCellState>();
                          foldingCellState?.toggleFold();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("+",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),

                //),
              ],
            )
        );
      },
    );
  }
}