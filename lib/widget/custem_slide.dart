import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/data/data.dart';
import 'package:responsive_ui/style/colors.dart';
import 'package:responsive_ui/utils/size_config.dart';

class custemSlide extends StatefulWidget {
  const custemSlide({
    super.key,
  });

  @override
  State<custemSlide> createState() => _custemSlideState();
}

class _custemSlideState extends State<custemSlide> {
  int iconindex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: SizeConfig.screenHeight,
        width: double.infinity,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child:
              Column(mainAxisSize: MainAxisSize.max, children: [
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  "asset/mac-action.svg",
                ),
              ),
            ),
            ...List.generate(
                menuIcons.length,
                (index) => InkWell(
                      onTap: () {
                        setState(() {
                          iconindex = index;
                        });
                      },
                      child: Container(
                         alignment: Alignment.centerLeft,
                        height: MediaQuery.sizeOf(context).height / 10,
                        color: Colors.transparent,
                        child: Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // const SizedBox(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0 ,horizontal: 10),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: SvgPicture.asset(
                                    menuIcons[index],
                                    height: 25,
                                    width: 25,
                                    color:iconindex == index ? AppColors.black: AppColors.secondary ,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 2,
                                decoration: BoxDecoration(
                                    color:iconindex == index ?  AppColors.primary : AppColors.secondaryBg,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
          ]),
        ),
      ),
    );
  }
}
