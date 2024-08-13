import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sooqista_app/utills/app_colors.dart';
import 'package:sooqista_app/utills/app_fonts.dart';

class CustomTextFieldDescription extends StatelessWidget {
  void Function()? onPrefixTap;
  void Function()? onTap;
  String? prefxicon;
  TextInputType? keyboardType;
  double? prefixRIghtPadding, sufixRIghtPadding;
  IconData? sufixicon;
  Widget? sufixImage;
  int? lines;
  FontStyle? fontStyle;
  bool readOnly, divider;
  EdgeInsetsGeometry? contentPadding;
  final String hint;
  final double? fontsize, width;
  final bool? obscureText;
  final Color? prefixIconColor;
  FocusNode? focusNode;
  final Color? hintColor, fillColor, textColor;
  double? borderRadius;

  TextEditingController? controller;
  String? Function(String?)? validator;
  void Function(String)? onchange;
  final void Function()? onclick;
  int? maxLength;
  List<TextInputFormatter>? inputFormatters;
  CustomTextFieldDescription({
    Key? key,
    this.onPrefixTap,
    this.textColor,
    this.hintColor,
    this.fillColor,
    this.prefxicon,
    this.maxLength,
    this.borderRadius,
    this.prefixRIghtPadding,
    this.sufixRIghtPadding,
    this.focusNode,
    this.sufixicon,
    this.lines,
    this.obscureText = false,
    required this.hint,
    this.fontsize,
    this.width,
    this.prefixIconColor,
    this.contentPadding,
    this.onclick,
    this.controller,
    this.validator,
    this.onchange,
    this.onTap,
    this.fontStyle,
    this.keyboardType,
    this.sufixImage,
    this.readOnly = false,
    this.divider = true,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      keyboardType: keyboardType,
      onChanged: onchange,
      validator: validator,
      controller: controller,
      obscureText: obscureText!,
      maxLength: maxLength,
      focusNode: focusNode,
      minLines: lines ?? 1,
      maxLines: lines ?? 1,
      inputFormatters: inputFormatters,
      style: TextStyle(
          fontSize: fontsize ?? 14.sp,
          color: textColor ?? AppColors.BLACK_COLOR),
      decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? AppColors.WHITE_COLOR,
          contentPadding: contentPadding ??
              (prefxicon == null ? EdgeInsets.all(13.sp) : null),
          hintText: hint,
          suffixIconConstraints: BoxConstraints(
            maxHeight: 30,
          ),
          hintStyle: TextStyle(
              color: hintColor ?? AppColors.HINT_COLOR,
              fontSize: 12.sp,
              fontFamily: AppFonts.interMedium,
              fontWeight: FontWeight.w500,
              fontStyle: fontStyle),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.DIVIDER_LINE),
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.DIVIDER_LINE),
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.DIVIDER_LINE),
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
          isDense: true,
          errorStyle: const TextStyle(overflow: TextOverflow.visible),
          errorMaxLines: 3,
          prefixIcon: prefxicon != null
              ? GestureDetector(
                  onTap: onPrefixTap,
                  child: SizedBox(
                    height: 14.h,
                    width: 35.w,
                    child: Image.asset(
                      prefxicon!,
                      color: prefixIconColor ?? AppColors.PRIMARY_COLOR,
                    ),
                  ),
                )
              : null,
          prefixIconConstraints: const BoxConstraints(),
          suffixIcon: sufixicon != null
              ? GestureDetector(
                  onTap: onclick,
                  child: Padding(
                      padding:
                          EdgeInsets.only(right: sufixRIghtPadding ?? 15.w),
                      child: sufixImage ??
                          Icon(
                            sufixicon,
                            color: AppColors.PRIMARY_COLOR,
                          )),
                )
              : sufixImage),
    );
  }
}
