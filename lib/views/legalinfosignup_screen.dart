import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souapp/views/bankinfosignup_screen.dart';

import '../utils/app_button.dart';
import '../utils/appcolors_theme.dart';
import '../utils/appstrings.dart';
import '../utils/apptext_field.dart';

class LegalInfoScreen extends StatelessWidget {
  const LegalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.backgroundblue,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height*0.022,),
                Padding(
                  padding: EdgeInsets.only(left: Get.width*0.04,top: Get.height*0.04),
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: Get.height*0.022,),
                Container(
                  height: Get.height*0.75,
                  width: Get.width*0.999,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: Get.width*0.04,top: Get.height*0.02,right: Get.width*0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height*0.008,),
                        Text('Legal Information',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.black),),
                        SizedBox(height: Get.height*0.008,),
                        Text('Tell us about yourself',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textblue),),
                        SizedBox(height: Get.height*0.025,),
                        AppTextField(
                          title: Text(AppStrings.fullname,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),),
                          hintText: AppStrings.fullname,
                        ),
                        SizedBox(height: Get.height*0.035),
                        AppTextField(
                          title: Text(AppStrings.dateofbirth,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),),
                          hintText: AppStrings.dateofbirth,
                        ),
                        SizedBox(height: Get.height*0.035),
                        AppTextField(
                          title: Text(AppStrings.socialno,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),),
                          hintText: AppStrings.socialno,
                        ),
                        SizedBox(height: Get.height*0.12),

                        AppButton(
                          onTap: (){
                            Get.to(()=> BankInfoScreen());
                          },
                          buttonName: AppStrings.next,
                          isIconShow: false,
                          width: Get.width*0.89,
                          height: Get.height*0.07,
                          fontSize: 18,
                          fontweight: FontWeight.w600,
                          backgroundColor: AppColors.orange,

                        ),
                        SizedBox(height: Get.height*0.04,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
