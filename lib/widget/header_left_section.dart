import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/responsive.dart';

class headerLeftSection extends StatelessWidget {
  const headerLeftSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if(!Responsive.isMobile(context))
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_outlined)),
            if(!Responsive.isMobile(context))
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
          padding:  EdgeInsets.symmetric(horizontal:!Responsive.isMobile(context)? 20.0 : 10),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("asset/man.jpeg"),
          ),
        )
      ],
    );
  }
}
