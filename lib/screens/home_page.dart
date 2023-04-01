import 'package:eye_care/screens/common%20widget/catagory.dart';
import 'package:eye_care/screens/common%20widget/colorchange.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List framesList = [
    "assets/images/RedFrame.png",
    "assets/images/mainframe.png",
    "assets/images/yellowframe.png",
    "assets/images/blackframe.png",
    "assets/images/purpleframe.png",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xE7030D31),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.call),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.search),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.notifications),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.favorite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.shopping_cart_rounded),
              ),
            ),
          ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                "assets/images/first_offer.jpg",
                height: 150,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "As Seen on SRIMCA",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => index == 0
                        ? Container(
                            child: ChangingColor(),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                              framesList[index],
                            ),
                          ),
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: 5),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x30000000),
                        offset: Offset(1, 1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TabBar(
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.label,
                          dividerColor: Color(0xDF1BCCB2),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xDF1BCCB2),
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xDF1BCCB2),
                                    width: 1,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("MEN"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xDF1BCCB2),
                                    width: 1,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("WOMEN"),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xDF1BCCB2),
                                    width: 1,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("KIDS"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              CategoryPage(),
                              CategoryPage(),
                              CategoryPage(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
