import 'package:flutter/material.dart';

class headerLeftSection extends StatelessWidget {
  const headerLeftSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined)),
        SizedBox(
          width: 8,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_important_outlined)),
        SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("asset/man.jpeg"),
          ),
        )
      ],
    );
  }
}
