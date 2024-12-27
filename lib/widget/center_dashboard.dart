import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/data/data.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/style/style.dart';
import 'package:responsive_ui/utils/responsive.dart';
import 'package:responsive_ui/utils/size_config.dart';
import 'package:responsive_ui/widget/chart.dart';
import 'package:responsive_ui/widget/chart2.dart';
import 'package:responsive_ui/widget/custem_card_view.dart';
import 'package:responsive_ui/widget/history.dart';
import 'package:responsive_ui/widget/leftsection.dart';

class centerDashboard extends StatelessWidget {
  const centerDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.blockSizeVertical! * 2.5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryText(
                        text: "Dashboard",
                        size: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      PrimaryText(
                        text: "Payments Updates",
                        size: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: AppColors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2.5),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 20.0),
              child: Expanded(child: custemCardView()),
            ),
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white
                
              ),
              margin: EdgeInsets.all(5),
              child: BarChartSample4()),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: SizedBox(height: SizeConfig.blockSizeVertical! * 2.3 ,child: Divider(color: AppColors.secondary ,thickness: 1,),),
            ),
            HistoryTable(),
            if(Responsive.isMobile(context))
              Leftsection(),
          
          ],
        ),
      ),
    );
  }
}


