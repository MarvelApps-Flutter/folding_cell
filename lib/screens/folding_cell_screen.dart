import 'package:flutter/material.dart';
import '../utils/foldable_card.dart';

class FoldingCellScreen extends StatefulWidget {
  FoldingCellScreen({Key? key}) : super(key: key);

  @override
  State<FoldingCellScreen> createState() => _FoldingCellScreenState();
}

class _FoldingCellScreenState extends State<FoldingCellScreen> {
  final itemCount = 5;
  final foldOutList = <bool>[false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Folding cell listview example"),
          centerTitle: true,
        ),
        body: buildBody());
  }

  Widget buildBody() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
          child: FoldableCard(
            foldOut: foldOutList[index],
            curve: foldOutList[index] == true
                ? Curves.easeInCubic
                : Curves.easeOutCubic,
            duration: Duration(milliseconds: 2000),
            coverBackground: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {
                  setState(() {
                    foldOutList[index] = true;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 90,
                          height: 145,
                          decoration: BoxDecoration(
                              color:
                                  Colors.deepPurple.shade900.withOpacity(0.8)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("\$14",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white)),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text("TODAY",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("05:10 PM",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: FractionallySizedBox(
                              widthFactor: 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/from_to_purple.png",
                                        height: 50,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("W 36th St,NY, 10015",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          Container(
                                            color: Colors.grey,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            height: 2,
                                          ),
                                          Text("W 36th St,NY, 10015",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("REQUESTS",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text("0",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("PLEDGE",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text("\$350",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("WEIGHT",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text("50 oz",
                                              style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            expandedCard: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Colors.deepPurple.shade900.withOpacity(0.8),
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        Text("# 1234-5678",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("\$25",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/head_image.png",
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: FractionallySizedBox(
                              widthFactor: 0.9,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("REQUESTS",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                      SizedBox(height: 5,),
                                      Text("0",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("PLEDGE",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                      SizedBox(height: 5,),
                                      Text("\$350",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("WEIGHT",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                      SizedBox(height: 5,),
                                      Text("50 oz",
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                  Container(
                      color: Colors.white,
                      height: 85,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("SENDER",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.grey)),
                                    SizedBox(
                                      height: 65,
                                      child: Image.asset(
                                        "assets/images/avatar.png",
                                        //height: 65,
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("Edward Norton",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.black)),
                                    SizedBox(
                                        height: 25,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                "assets/images/stars.png"),
                                            Text("(26)",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: Colors.black))
                                          ],
                                        )),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    child: Container(
                      color: Colors.grey.shade300,
                      width: MediaQuery.of(context).size.width * 1,
                      height: 0.6,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("FROM",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: Colors.grey)),
                                  Text("W 90th St",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  Text("New York, NY 10025",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("TO",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: Colors.grey)),
                                  Text("46th Ave",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  Text("Woodside, NY 11101",
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            cover: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () {
                setState(() {
                  foldOutList[index] = false;
                });
              },
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DELIVERY DATE",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Colors.grey)),
                                    Text("6:30 pm",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.black)),
                                    Text("May 16,2016",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("REQUEST DEADLINE",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Colors.grey)),
                                    Text("24 minutes",
                                        style: TextStyle(
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.black))
                                  ],
                                ),
                                Container(
                                  color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12)),
                                onPressed: () {
                                  print("button pressed");
                                },
                                child: Text("REQUEST")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            foldingHeight: 120,
            expandedHeight: 300,
          ),
        );
      },
      itemCount: itemCount,
    );
  }
}
