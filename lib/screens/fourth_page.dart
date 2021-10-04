import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sabji_mandi/models/basket.dart';
import 'package:sabji_mandi/screens/cart.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          Container(
            height: size.height * 0.76,
            width: size.width * 0.2,
            decoration: BoxDecoration(
                color: HexColor("#FFB586"),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text(
                        "My Basket",
                        style: GoogleFonts.montserrat(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: size.width * 0.42,
                      ),
                      const Icon(Icons.clear)
                    ],
                  ),
                  const MyBasket(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
            child: Row(
              children: [
                Text(
                  "Total Amount",
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: size.width * 0.55,
                ),
                Text(
                  "₹ 20/kg",
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 40.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartSection()));
              },
              child: Text(
                "Buy Now",
                style: GoogleFonts.montserrat(),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange[400],
                  minimumSize: const Size(1, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ],
      )),
    );
  }
}
