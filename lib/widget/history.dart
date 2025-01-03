import 'package:flutter/material.dart';
import 'package:responsive_ui/data/data.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/style/style.dart';
import 'package:responsive_ui/utils/responsive.dart';
import 'package:responsive_ui/utils/size_config.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
          child: SizedBox(
            width: Responsive.isDesktop(context) ? double.infinity : SizeConfig.screenWidth,
            child: Table(
        defaultVerticalAlignment:
              TableCellVerticalAlignment.middle,
        children: List.generate(
            transactionHistory.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(transactionHistory[index]["avatar"]!),
                  ),
                ),
                PrimaryText(
                  text: transactionHistory[index]["label"]!,
                  size:Responsive.isMobile(context) ? 12 : 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory[index]["time"]!,
                  size: Responsive.isMobile(context) ? 12:16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory[index]["amount"]!,
                  size:Responsive.isMobile(context) ? 12: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: transactionHistory[index]["status"]!,
                  size:Responsive.isMobile(context) ? 12: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
              ],
            ),
        ),
      ),
          ),
    );
  }
}