// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/data/data.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/style/style.dart';
import 'package:responsive_ui/utils/responsive.dart';
import 'package:responsive_ui/utils/size_config.dart';
import 'package:responsive_ui/widget/center_dashboard.dart';
import 'package:responsive_ui/widget/custem_slide.dart';
import 'package:responsive_ui/widget/leftsection.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> key = GlobalKey();
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: const custemSlide(),
      key: key,
      backgroundColor: AppColors.primaryBg,
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  setState(() {
                    key.currentState!.openDrawer();
                  });
                },
              ),
            )
          : const PreferredSize(
              preferredSize: Size.fromHeight(0), child: SizedBox()),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 1,
              child: custemSlide(),
            ),
          Expanded(
            flex: 10,
            child: centerDashboard(),
          ),
          if (!Responsive.isMobile(context))
          const Expanded(
            flex: 4,
            child: Leftsection(),
          ),
        ],
      )),
    );
  }
}



