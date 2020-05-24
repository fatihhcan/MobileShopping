import 'package:flutter/material.dart';

import '../second.dart';

class Fruits extends StatefulWidget {
  Fruits({Key key}) : super(key: key);

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      _buildFruitCard("Kiwi", "assets/images/kiwi.png", "90₺",
                          0xffF7DFB9, 0xffFAF0DA),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Second()));
                        },
                        child: _buildFruitCard(
                            "Avocado",
                            "assets/images/avocado.png",
                            "120₺",
                            0xffC4D4A3,
                            0xffE0E8CF),
                      ),
                      SizedBox(height: 10),
                      _buildFruitCard("Mango", "assets/images/mango.png",
                          "150₺", 0xffF6E475, 0xffF9EFB0),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffECEDF1),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 20),
                            child: Column(
                              children: <Widget>[
                                Text("A Spring surprise",
                                    style: TextStyle(
                                      //fontFamily:
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    )),
                                SizedBox(height: 10),
                                Text("%40 OFF",
                                    style: TextStyle(
                                      //fontFamily:
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    )),
                                SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.green)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      "FOODLY SURPRISE",
                                      style: TextStyle(
                                        color: Colors.green,
                                        //fontFamily:
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Use the code above for Spring collection purchases",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontFamily:
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 30),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildFruitCard("Papaya", "assets/images/papaya.png",
                          "45₺", 0xffFFC498, 0xffFDDCC1),
                      SizedBox(height: 10),
                      _buildFruitCard(
                          "Strawberry",
                          "assets/images/strawberry.png",
                          "200₺",
                          0xffF0AEAF,
                          0xffFBC6CA),
                      SizedBox(height: 10),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildFruitCard(
      String name, String asset, String rate, int color, int color2) {
    return Container(
      width: 175,
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
                decoration: BoxDecoration(
                    color: Color(color2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add, color: Colors.grey),
                )),
          ),
          Center(
            child: Image.asset(
              asset,
              fit: BoxFit.contain,
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(name,
                style: TextStyle(
                  //fontFamily:
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text("Gurugram Mandi Haryana",
                style: TextStyle(
                  //fontFamily:
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(rate,
                        style: TextStyle(
                          //fontFamily:
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                    Text("Per quintel",
                        style: TextStyle(
                          //fontFamily:
                          color: Colors.black87,

                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  ],
                ),
                Spacer(),
                Text("View Prices",
                    style: TextStyle(
                      //fontFamily:
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    )),
              ],
            ),
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}
