import 'package:flutter/material.dart';
import 'package:sabji_mandi/screens/cart.dart';
import 'package:sabji_mandi/screens/next_page.dart';
import 'package:sabji_mandi/screens/third_page.dart';
import 'package:sabji_mandi/widgets/title.dart';
import 'context.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catcontents.length,
        itemBuilder: (_, i) => buildCard(i),
      ),
    );
  }

  Widget buildCard(int i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NextPage()));
              },
              child: Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  color: catcontents[i].color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        catcontents[i].image,
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              catcontents[i].name,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
          ],
        ),
      );
}

class PopularElement extends StatefulWidget {
  const PopularElement({Key? key}) : super(key: key);

  @override
  _PopularElementState createState() => _PopularElementState();
}

class _PopularElementState extends State<PopularElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: popularEle(context),
    );
  }
}

Widget popularEle(context) => ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: contents.length,
    itemBuilder: (_, i) {
      return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NextPage()));
        },
        child: Container(
          margin: EdgeInsets.all(5),
          width: 150,
          height: 230,
          decoration: BoxDecoration(
            color: Colors.pink[50],
            //border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 140.0, left: 100.0),
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
                  color: contents[i].color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(
                          contents[i].image,
                        ),
                        height: 60,
                        width: 180,
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
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  height: 90,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.black),
                    color: Colors.transparent,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
