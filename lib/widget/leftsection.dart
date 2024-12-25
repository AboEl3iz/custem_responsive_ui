import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/style/style.dart';
import 'package:responsive_ui/utils/size_config.dart';
import 'package:responsive_ui/widget/custem_card.dart';
import 'package:responsive_ui/widget/header_left_section.dart';

import '../data/data.dart';

class Leftsection extends StatelessWidget {
  const Leftsection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight,
      width: double.infinity,
      color: AppColors.secondaryBg,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          const headerLeftSection(),
           SizedBox(
            height: SizeConfig.blockSizeVertical! * 1.5,
          ),
          const CustemCard(),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, bottom: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: "Recent Activities",
                  fontWeight: FontWeight.w700,
                  size: 15,
                ),
                PrimaryText(
                  text: "02 March 2021",
                  fontWeight: FontWeight.w400,
                  size: 10,
                ),
              ],
            ),
          ),
          ...List.generate(
            recentActivities.length,
            (index) => ListTile(
              visualDensity: VisualDensity.standard,
              leading: Container(
                  padding: const EdgeInsets.all(12),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.white),
                  child: SvgPicture.asset(
                    recentActivities[index]['icon']!,
                    color: AppColors.primary,
                    height: 10,
                    width: 10,
                    fit: BoxFit.scaleDown,
                  )),
              title: PrimaryText(
                text: recentActivities[index]['label']!,
                fontWeight: FontWeight.w600,
                size: 11,
              ),
              trailing: PrimaryText(
                text: recentActivities[index]['amount']!,
                fontWeight: FontWeight.w700,
                size: 11,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, bottom: 30),
            child:  Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: "Upcoming Payments",
                  fontWeight: FontWeight.w700,
                  size: 15,
                ),
                PrimaryText(
                  text: "13 March 2021",
                  fontWeight: FontWeight.w400,
                  size: 10,
                ),
              ],
            ),
          ),
          ...List.generate(
            upcomingPayments.length,
            (index) => ListTile(
              visualDensity: VisualDensity.standard,
              leading: Container(
                  padding: const EdgeInsets.all(12),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.white),
                  child: SvgPicture.asset(
                    upcomingPayments[index]['icon']!,
                    color: AppColors.primary,
                    height: 10,
                    width: 10,
                    fit: BoxFit.scaleDown,
                  )),
              title: PrimaryText(
                text: upcomingPayments[index]['label']!,
                fontWeight: FontWeight.w600,
                size: 11,
              ),
              trailing: PrimaryText(
                text: upcomingPayments[index]['amount']!,
                fontWeight: FontWeight.w700,
                size: 11,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}


