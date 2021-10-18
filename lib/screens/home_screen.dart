import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sabji_mandi/models/basket.dart';
import 'package:sabji_mandi/models/categories.dart';
import 'package:sabji_mandi/screens/cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.01),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.menu),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning !",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on),
                                Text(
                                  "B-52 Satyam Vihar Src-63 Raipur",
                                  style: GoogleFonts.montserrat(),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
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
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink.shade50,
                ),
                child: const ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for Product",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.25,
                width: size.width * 0.20,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 610.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const CategoriesScreen(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  Text(
                    "Popular This Week",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                  ),
                  Icon(Icons.filter_list)
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const PopularElement()
            ],
          ),
        ),
      ),
    );
  }
}
