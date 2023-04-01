import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List categoryList = [
    "assets/images/sunglasses.png",
    "assets/images/sunglasses (1).png",
    "assets/images/vr.png",
    "assets/images/eye-glasses.png",
    "assets/images/girl.png",
    "assets/images/reading-glasses.png",
  ];
  List categoryName = [
    "EyeGlasses",
    "Sun Glasses",
    "Computer Glasses",
    "Power Glasses",
    "kids Glasses",
    "Reading Glasses",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 10,
          mainAxisExtent: 150,
        ),
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(color: Color(0x1F1BCCB2), shape: BoxShape.circle),
              child: Image.asset(
                categoryList[index],
                width: 10,
                height: 10,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              categoryName[index],
            ),
          ],
        ),
      ),
    );
  }
}
