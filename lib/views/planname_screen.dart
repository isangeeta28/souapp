import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souapp/views/motivation_screen.dart';

import '../utils/app_button.dart';
import '../utils/appcolors_theme.dart';
import '../utils/appstrings.dart';

class PlanNameScreen extends StatelessWidget {
  const PlanNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.backgroundblue,
          body: Stack(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back,color: AppColors.white,)),
              Positioned(
                  top: Get.height*0.08,
                  left: Get.width*0.25,
                  child: Image.asset('assets/images/Saly-26.png')),
              Positioned(
                  top: Get.height*0.05,
                  left: Get.width*0.87,
                  child: Image.asset('assets/images/vector2.png')),
              Padding(
                padding:  EdgeInsets.only(top: Get.height*0.43),
                child: Container(
                  height: Get.height*0.75,
                  width: Get.width*0.999,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: Get.width*0.04, right: Get.width*0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height*0.027,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Give this plan a name',
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.textblue),),
                            Text('2/2',
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: AppColors.textblue),)
                          ],
                        ),
                        SizedBox(height: Get.height*0.04,),
                        Container(
                          height: Get.height*0.058,
                          width: Get.width* 0.93,
                          padding: EdgeInsets.only(left: Get.width*0.02,top: Get.height*0.014),
                          decoration: BoxDecoration(
                              color: AppColors.filledcolor,
                              border: Border.all(color: AppColors.textblack)
                          ),
                          child: Text('Save for rent'),
                        ),
                        SizedBox(height: Get.height*0.01,),
                        Text('0/250 characters',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: AppColors.backgroundblue),),
                        SizedBox(height: Get.height*0.06,),
                        Text('Start Date:',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.black),),
                        SizedBox(height: Get.height*0.01,),
                        Container(
                          height: Get.height*0.058,
                          width: Get.width* 0.93,
                          padding: EdgeInsets.only(left: Get.width*0.02,top: Get.height*0.014),
                          decoration: BoxDecoration(
                              color: AppColors.filledcolor,
                              border: Border.all(color: AppColors.textblack)
                          ),
                          child: Text('Save for rent'),
                        ),
                        SizedBox(height: Get.height*0.09,),

                        AppButton(
                            buttonName: AppStrings.next,
                            onTap: (){
                              Get.to(()=>MotivationScreen());
                            },
                            isIconShow: false,
                            height: Get.height*0.071,
                            fontSize: 18,
                            fontweight: FontWeight.w600,
                            width: Get.width* 0.93,
                            backgroundColor: AppColors.orange,
                            //iconColor: AppColors.bluishBlack,
                            textColor: Color(0xffFFFFFF)),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
