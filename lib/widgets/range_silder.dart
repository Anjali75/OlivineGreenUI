import 'dart:math';

import 'package:flutter/material.dart';

class RangeSliderr extends StatefulWidget {
  const RangeSliderr({Key? key}) : super(key: key);

  @override
  _RangeSliderrState createState() => _RangeSliderrState();
}

class _RangeSliderrState extends State<RangeSliderr> {
  double value = 50;
  int indexTop = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.2,
      child: SliderTheme(
        data: SliderThemeData(
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.pink[100],
            thumbColor: Colors.orange,
            overlayColor: Colors.green,
            activeTrackColor: Colors.orange,
            disabledActiveTickMarkColor: Colors.red,
            disabledThumbColor: Colors.green,
            disabledInactiveTickMarkColor: Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 5,
              //activeColor: Colors.orange,
              //inactiveColor: Colors.pink[100],
              label: value.round().toString(),
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
