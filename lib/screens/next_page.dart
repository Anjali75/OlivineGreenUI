import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sabji_mandi/models/categories.dart';
import 'package:sabji_mandi/models/grid.dart';

import 'cart.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 25),
      child: SafeArea(
        child: ListView(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              SizedBox(
                width: size.width * 0.012,
              ),
              Text(
                "Categories",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.42,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: HexColor("#FCD17D"),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.shopping_bag_outlined),
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink.shade50,
            ),
            child: const ListTile(
              title: TextField(
                decoration: InputDecoration(
                    hintText: "Search for Product", border: InputBorder.none),
              ),
              trailing: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Row(
            children: [
              Text(
                "Vegetables",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).padding.left * 0.5),
                child: Icon(Icons.filter_list),
              )
            ],
          ),
          SizedBox(height: size.height * 0.030),
          SizedBox(
              height: size.height * 0.7,
              width: size.width,
              child: const GridElem())
        ]),
      ),
    ));
  }
}
