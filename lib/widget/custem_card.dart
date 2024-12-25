import 'package:flutter/material.dart';

class CustemCard extends StatelessWidget {
  const CustemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("asset/card.png")),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(1, 8),
                    blurRadius: 12,
                    spreadRadius: 5)
              ]),
        ),
      ),
    );
  }
}
