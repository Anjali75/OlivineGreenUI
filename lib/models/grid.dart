import 'package:flutter/material.dart';
import 'package:sabji_mandi/screens/cart.dart';
import 'package:sabji_mandi/screens/third_page.dart';

import 'context.dart';

class GridElem extends StatefulWidget {
  const GridElem({Key? key}) : super(key: key);

  @override
  _GridElemState createState() => _GridElemState();
}

class _GridElemState extends State<GridElem> {
  @override
  Widget build(BuildContext context) {
    return gridEle(context);
  }
}

Widget gridEle(context) => GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: gridcontents.length,
    itemBuilder: (_, i) {
      return Container(
        margin: EdgeInsets.all(5),
        width: 150,
        height: 230,
        decoration: BoxDecoration(
          color: gridcontents[i].color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140.0, left: 140.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartSection()));
                },
                child: Image.asset(
                  "assets/images/Group 603.png",
                  height: 150,
                  width: 120,
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: gridcontents[i].color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThirdPage()));
                      },
                      child: Image(
                        image: AssetImage(
                          gridcontents[i].image,
                        ),
                        height: 60,
                        width: 180,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contents[i].vegname,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(contents[i].money,
                        style: const TextStyle(fontSize: 15)),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      contents[i].offer,
                      style: const TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                height: 90,
                decoration: BoxDecoration(
                  color: gridcontents[i].color,
                ),
              ),
            )
          ],
        ),
      );
    });
