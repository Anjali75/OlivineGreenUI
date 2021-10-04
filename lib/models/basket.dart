import 'package:flutter/material.dart';
import 'package:sabji_mandi/widgets/inc_dec_counter.dart';

class MyBasket extends StatefulWidget {
  const MyBasket({Key? key}) : super(key: key);

  @override
  _MyBasketState createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: elements.length,
        itemBuilder: (_, i) => trialBask(i),
      ),
    );
  }
}

Widget trialBask(int i) => Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 130,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/tokri.png"),
                          height: 110,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orange[200],
                      //border: Border.all(color: Colors.blue),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 130,
              width: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      elements[i].veggie,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(elements[i].kg),
                    Text(
                      elements[i].organic,
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            ListTileItem(),
          ],
        ),
      ),
    );

class MyListBasket {
  String image;
  String veggie;
  String kg;
  String organic;
  MyListBasket(
      {required this.image,
      required this.veggie,
      required this.kg,
      required this.organic});
}

List<MyListBasket> elements = [
  MyListBasket(
    image: "assets/images/tokri.png",
    veggie: "Vegetables",
    kg: "₹15/kg",
    organic: "Organic",
  ),
  MyListBasket(
    image: "assets/images/tokri.png",
    veggie: "Red Peppers",
    kg: "₹20/kg",
    organic: "Organic",
  ),
  MyListBasket(
    image: "assets/images/tokri.png",
    veggie: "Carrots",
    kg: "₹20/kg",
    organic: "Organic",
  )
];
