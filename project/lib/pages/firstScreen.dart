import 'package:flutter/material.dart';

import 'products/dairy.dart';
import 'products/fruits.dart';
import 'products/nuts.dart';
import 'products/vegetables.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var SizeConfig;
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 25,
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 25,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Search here",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          //fontFamily:
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.search, color: Colors.black, size: 15)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                    child: Text("Fruits",
                        style: TextStyle(
                          fontSize: 20,
                          //fontFamily:
                        ))),
                Tab(
                    child: Text("Vegetables",
                        style: TextStyle(
                          fontSize: 20,
                          //fontFamily:
                        ))),
                Tab(
                    child: Text("Nuts & Seeds",
                        style: TextStyle(
                          fontSize: 20,
                          //fontFamily:
                        ))),
                Tab(
                    child: Text("Dairy",
                        style: TextStyle(
                          fontSize: 20,
                          //fontFamily:
                        ))),
              ],
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Fruits(),
                    Vegetables(),
                    Nuts(),
                    Dairy(),
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
