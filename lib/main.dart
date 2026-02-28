import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
    body: Center(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                dice(1),
                dice(2),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                dice(3),
                dice(4),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                dice(5),
                dice(6),
              ],
            ),
          ],
        ),

      ),
    ),
  )));
}



Widget dice(int number) {
  return Container(
    width: 100,
    height: 100,
    margin: EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black,width: 3),
      borderRadius: BorderRadius.circular(3),
    ),
    child: Padding(padding: EdgeInsets.all(10),
      child: diceLayout(number),
    ),
  );
}


Widget diceLayout(int number) {
  switch (number) {
    case 1:
      return Center(child: dot(),);


    case 2: return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(alignment: Alignment.topRight, child: dot(),),
        Align(alignment: Alignment.bottomLeft, child: dot(),),
      ],
    );

    case 3: return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(alignment: Alignment.topRight, child: dot(),),
        Center(child: dot(),),
        Align(alignment: Alignment.bottomLeft, child: dot(),),
      ],
    );

    case 4: return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        ),
      ],
    );
    case 5: return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        ),
        Center(child: dot(),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        ),
      ],
    );
    case 6: return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot(), dot()],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot(), dot()],
        ),
      ],
    );

    default : return SizedBox();
  }
}



Widget dot() {
  return Container(
    width: 14,
    height: 14,
    decoration: BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle
    ),
  );
}












