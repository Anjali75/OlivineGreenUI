import 'dart:developer';

import 'package:flutter/material.dart';

class IncDecCounter extends StatefulWidget {
  const IncDecCounter({Key? key}) : super(key: key);

  @override
  _IncDecCounterState createState() => _IncDecCounterState();
}

class _IncDecCounterState extends State<IncDecCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 80,
      color: Colors.blue,
    );
  }
}

class ListTileItem extends StatefulWidget {
  //const ListTileItem({Key? key}) : super(key: key);

  @override
  _ListTileItemState createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.05,
              width: size.width * 0.099,
              child: FloatingActionButton(
                backgroundColor: Colors.green[700],
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ),
            Text('$_counter kg', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: size.height * 0.05,
              width: size.width * 0.099,
              child: FloatingActionButton(
                backgroundColor: Colors.green[700],
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
            )
          ],
        ),
      ),
    );
  }
}
