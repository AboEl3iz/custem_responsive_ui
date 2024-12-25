import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/data/data.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/style/style.dart';
import 'package:responsive_ui/utils/responsive.dart';
import 'package:responsive_ui/utils/size_config.dart';
import 'package:responsive_ui/widget/chart.dart';
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
            custemCardView(),
            
            BarChartSample3(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height: SizeConfig.blockSizeVertical! * 2.5 ,child: Divider(color: AppColors.secondary ,thickness: 1,),),
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

class custemCardView extends StatelessWidget {
  const custemCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context)?   1:5,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMobile(context)? 2 :4 ,),
          itemCount: infoCardData.length,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SvgPicture.asset(
                        infoCardData[index].icon,
                        height: 30,
                      )),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1.5),
                  PrimaryText(
                    text: infoCardData[index].label,
                    size: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2.5),
                  PrimaryText(
                    text: infoCardData[index].amount,
                    size: 10,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2.5),
                  
                  
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
