import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/data/data.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/style/style.dart';
import 'package:responsive_ui/utils/responsive.dart';
import 'package:responsive_ui/utils/size_config.dart';

class custemCardView extends StatelessWidget {
  const custemCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context)?   1.7:3.8,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: Responsive.isMobile(context)? 1.6:3/4,
            mainAxisSpacing: 10,
            crossAxisSpacing: Responsive.isMobile(context) ?12: 14,

              crossAxisCount: Responsive.isMobile(context)? 2 :4 ,),
          itemCount: infoCardData.length,
          itemBuilder: (context, index) {
            return Container(
              
              height: 30,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2.4),
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