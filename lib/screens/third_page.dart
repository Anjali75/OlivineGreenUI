import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabji_mandi/screens/fourth_page.dart';
import 'package:sabji_mandi/screens/home_screen.dart';
import 'package:sabji_mandi/widgets/inc_dec_counter.dart';
import 'package:sabji_mandi/widgets/range_silder.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.03,
          right: MediaQuery.of(context).size.width * 0.03,
          top: MediaQuery.of(context).padding.top * 0.1),
      child: SafeArea(
        child: ListView(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: size.width * 0.012,
              ),
              Text(
                "Vegetables",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          Container(
            height: size.height * 0.25,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    "assets/images/Broccoli.png",
                  ),
                  height: size.height * 0.19,
                  width: size.width * 0.85,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02,
                      left: MediaQuery.of(context).size.width * 0.02),
                  child: Row(
                    children: [
                      Text(
                        "100% Organic",
                        style: GoogleFonts.montserrat(color: Colors.green[500]),
                      ),
                      SizedBox(
                        width: size.width * 0.58,
                      ),
                      Icon(
                        Icons.crop_square_rounded,
                        color: Colors.green[500],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Row(
            children: [
              Text(
                "Dicicco Broccoli",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                width: size.width * 0.42,
              ),
              Text(
                "kg",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            "₹ 20/kg",
            style: GoogleFonts.montserrat(fontSize: 25.0),
          ),
          RangeSliderr(),
          SizedBox(height: size.height * 0.012),
          Theme(
            data: ThemeData(
              dividerColor: Colors.transparent,
            ),
            child: ListTileTheme(
              contentPadding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.03),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text(
                  "About",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.black,
                    color: Colors.black,
                  ),
                ),
                children: [
                  ExpandableText(
                    "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable.Broccoli is classified .Broccoli is an edible green plant in the cabbage family whose large flowering head, Broccoli is an edible green plant in the cabbage family whose large flowering head, ",
                    style: GoogleFonts.montserrat(
                      fontSize: 15.0,
                    ),
                    expandText: "Show More",
                    collapseText: 'show less',
                  )
                ],
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              dividerColor: Colors.transparent,
            ),
            child: ListTileTheme(
              contentPadding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.03),
              child: ExpansionTile(
                //initiallyExpanded: true,
                title: Text(
                  "Nutrition Detail",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.black,
                    color: Colors.black,
                  ),
                ),
                children: [
                  ExpandableText(
                    "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable.Broccoli is classified .Broccoli is an edible green plant in the cabbage family whose large flowering head, Broccoli is an edible green plant in the cabbage family whose large flowering head, ",
                    style: GoogleFonts.montserrat(
                      fontSize: 15.0,
                    ),
                    expandText: "Show More",
                    collapseText: 'show less',
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.delivery_dining_sharp,
                      size: 30,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Text(
                      "Delivery Details",
                      style: GoogleFonts.montserrat(),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                    ),
                    Text(
                      "₹ 20.00",
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Text(
                  "Free delivery on order upto ₹ 200",
                  style: GoogleFonts.montserrat(color: Colors.grey[500]),
                ),
                Row(children: [
                  const Icon(
                    Icons.timelapse_sharp,
                    size: 25,
                  ),
                  SizedBox(
                    width: size.width * 0.009,
                  ),
                  Text(
                    "Delivered in ",
                    style: GoogleFonts.montserrat(),
                  ),
                  SizedBox(
                    width: size.width * 0.48,
                  ),
                  Text(
                    "30 min",
                    style: GoogleFonts.montserrat(),
                  )
                ]),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FourthPage()));
                      },
                      child: Text(
                        "Buy Now",
                        style: GoogleFonts.montserrat(),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange[400],
                          minimumSize:
                              Size(size.width * 0.48, size.height * 0.07),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Add to Cart",
                            style: GoogleFonts.montserrat(),
                          )
                        ],
                      ),
                      height: size.height * 0.07,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
