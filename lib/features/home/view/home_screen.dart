import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:translator_app/core/helper/app_strings.dart';
import 'package:translator_app/core/helper/images_assest.dart';
import 'package:translator_app/features/home/logic/translator_cubit.dart';
import 'package:translator_app/features/home/view/widget/custom_dropdown.dart';
import 'package:translator_app/features/home/view/widget/custom_text_field.dart';

import '../../../core/theming/color_manger.dart';
import '../../../core/theming/text_styel_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0).w,
            child: BlocBuilder<TranslatorCubit, TranslatorState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Image.asset(
                      ImagesAssest.logo,
                      width: 180,
                      height: 180,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomTextField(
                        hint: AppStrings.enterTextToTranslate),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomDropdown(
                            languageCode: context
                                .read<TranslatorCubit>()
                                .inputLanguageCode),
                        SizedBox(
                          width: 20.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: ColorsManger.primary,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        CustomDropdown(
                            languageCode: context
                                .read<TranslatorCubit>()
                                .outputLanguageCode),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ElevatedButton(
                        onPressed:
                            context.read<TranslatorCubit>().translatorText,
                        child: Text(
                          AppStrings.trnaslate,
                          style: TextStyelManger.font24PrimaryBold,
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextField(
                        controller:
                            context.read<TranslatorCubit>().outputController,
                        hint: AppStrings.theResult),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
