import 'package:ecommerceapp/Widget/DimonsionSize.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("History",),
            Icon(Icons.history)
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: Dimonsion.l120 + 20,
            top: Dimonsion.t200,
              child: Text("History is Empty", style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}
