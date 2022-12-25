import 'package:flutter/material.dart';
import 'package:flutter_folding_cell_module/constants/app_constants.dart';
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
          title: Text(AppConstants.foldingCellTitle,
              style: TextStyle(
                  fontFamily: AppConstants.textStyleInter,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white)),
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
                                child: Text(AppConstants.amounts,
                                    style: TextStyle(
                                        fontFamily: AppConstants.textStyleInter,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white)),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(AppConstants.today,
                                    style: TextStyle(
                                        fontFamily: AppConstants.textStyleInter,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(AppConstants.timing,
                                    style: TextStyle(
                                        fontFamily: AppConstants.textStyleInter,
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
                                        AppConstants.fromPurle,
                                        height: 50,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(AppConstants.upperAdd,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
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
                                          Text(AppConstants.lowerAdd,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
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
                                          Text(AppConstants.request,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text(AppConstants.zeroAmt,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(AppConstants.pledge,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text(AppConstants.amt350,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(AppConstants.weight,
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.grey)),
                                          Text("50 oz",
                                              style: TextStyle(
                                                  fontFamily: AppConstants.textStyleInter,
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
                        Text(AppConstants.numbering,
                            style: TextStyle(
                                fontFamily: AppConstants.textStyleInter,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(AppConstants.amt25,
                              style: TextStyle(
                                  fontFamily: AppConstants.textStyleInter,
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
                        AppConstants.headImage,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(AppConstants.requests,
                                          style: TextStyle(
                                              fontFamily: AppConstants.textStyleInter,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(AppConstants.zeroAmt,
                                          style: TextStyle(
                                              fontFamily: AppConstants.textStyleInter,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(AppConstants.pledge,
                                          style: TextStyle(
                                              fontFamily: AppConstants.textStyleInter,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(AppConstants.amt350,
                                          style: TextStyle(
                                              fontFamily: AppConstants.textStyleInter,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(AppConstants.weight,
                                          style: TextStyle(
                                              fontFamily: AppConstants.textStyleInter,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: Colors.grey)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(AppConstants.oz50,
                                          style: TextStyle(
                                              fontFamily: AppConstants.textStyleInter,
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
                                    Text(AppConstants.sender,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.grey)),
                                    SizedBox(
                                      height: 65,
                                      child: Image.asset(
                                        AppConstants.avatar,
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
                                    Text(AppConstants.edwardNorton,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.black)),
                                    SizedBox(
                                        height: 25,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                AppConstants.stars),
                                            Text(AppConstants.th26,
                                                style: TextStyle(
                                                    fontFamily: AppConstants.textStyleInter,
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
                                  Text(AppConstants.from,
                                      style: TextStyle(
                                          fontFamily: AppConstants.textStyleInter,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: Colors.grey)),
                                  Text(AppConstants.th90,
                                      style: TextStyle(
                                          fontFamily: AppConstants.textStyleInter,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  Text(AppConstants.newYork,
                                      style: TextStyle(
                                          fontFamily: AppConstants.textStyleInter,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Colors.black))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppConstants.to,
                                      style: TextStyle(
                                          fontFamily: AppConstants.textStyleInter,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: Colors.grey)),
                                  Text(AppConstants.th46,
                                      style: TextStyle(
                                          fontFamily: AppConstants.textStyleInter,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Colors.black)),
                                  Text(AppConstants.woodSide,
                                      style: TextStyle(
                                          fontFamily: AppConstants.textStyleInter,
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
                                    Text(AppConstants.deliveryDate,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Colors.grey)),
                                    Text(AppConstants.pm6,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.black)),
                                    Text(AppConstants.may16,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(AppConstants.reqDead,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Colors.grey)),
                                    Text(AppConstants.min24,
                                        style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
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
                                child: Text(AppConstants.req,
                                 style: TextStyle(
                                            fontFamily: AppConstants.textStyleInter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.black)
                                )),
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
