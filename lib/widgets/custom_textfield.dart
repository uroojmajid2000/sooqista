import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:sooqista_app/utills/app_colors.dart";
import "package:sooqista_app/utills/app_fonts.dart";

typedef FieldValidator = String? Function(String?)?;

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      required this.hintText,
      this.maxLines,
      this.minLines,
      this.validator,
      this.maxLength,
      this.textInputFormattors,
      this.prefixIcon,
      this.borderRadius = 30,
      this.keyboardType = TextInputType.text,
      this.suffixIcon,
      this.fillColor = Colors.white,
      this.isMultiLine = false,
      this.isObsCure = false,
      this.onIconTap,
      this.readyOnly = false,
      this.textStyle,
      this.fontSize,
      this.hasShadow = true,
      this.textColor,
      this.helpertext,
      this.onTap,
      this.hintTextColor,
      this.onChanged,
      this.isLogin = false,
      this.textEditingController,
      this.height,
      this.filled = false,
      this.filledColor,
      this.borderColor,
      this.focusedColor,
      this.enabledBorderColor,
      this.focusNode,
      this.textInputAction})
      : super(key: key);

  final String hintText;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final double borderRadius;
  String? Function(String?)? validator;
  String? Function(String?)? onSaved;
  final String? prefixIcon;
  final String? suffixIcon;
  final bool isMultiLine;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? hintTextColor;
  final Color? textColor;
  final List<TextInputFormatter>? textInputFormattors;
  final TextStyle? textStyle;
  final String? helpertext;
  final TextEditingController? textEditingController;
  final bool readyOnly;
  final bool hasShadow;
  final bool isObsCure;
  final bool isLogin;
  final VoidCallback? onTap;
  final Function()? onIconTap;
  final double? fontSize;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final double? height;
  Color? filledColor;
  bool? filled;
  Color? borderColor;
  Color? focusedColor;
  Color? enabledBorderColor;
  FocusNode? focusNode;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:  50.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            // color: Color(0xFFDBDBDB),
            color: AppColors.WHITE_COLOR,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: TextFormField(
        focusNode: widget.focusNode,
        obscureText: widget.isObsCure,
        onTap: widget.onTap,
        readOnly: widget.readyOnly,
        inputFormatters: widget.textInputFormattors,
        validator: (value) {
          String? validationResult = widget.validator?.call(value);
          setState(() {
            hasError = validationResult != null;
          });
          return validationResult;
        },
        textInputAction: widget.textInputAction,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        style: TextStyle(
          color: widget.textColor ?? AppColors.BLACK_COLOR,
          fontSize: widget.fontSize ?? 16.sp,
          fontFamily: AppFonts.interMedium,
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
        maxLines: widget.isMultiLine ? widget.maxLines : 1,
        controller: widget.textEditingController,
        cursorColor: AppColors.PRIMARY_COLOR,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor ?? AppColors.WHITE_COLOR,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDADADA), width: 1),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFDADADA), width: 1.5),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          hintText: widget.hintText,
          hintStyle:
              TextStyle(color: widget.hintTextColor ?? AppColors.HINT_COLOR),
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Image.asset(
                    widget.prefixIcon!,
                    height: 15,
                    color: Colors.black,
                  ),
                )
              : null,
          suffixIcon: widget.suffixIcon != null || widget.isLogin
              ? Padding(
                  padding: const EdgeInsets.only(left: 12, right: 17),
                  child: widget.isLogin
                      ? GestureDetector(
                          onTap: widget.onIconTap,
                          child: Icon(
                            widget.isObsCure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        )
                      : Image.asset(
                          widget.suffixIcon!,
                          height: 18,
                        ),
                )
              : null,
        ),
      ),
    );
  }
}
