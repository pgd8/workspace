import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/Core/Utils/units.dart';
import 'package:workspace/Core/style/assets_manager.dart';
import 'package:workspace/Core/style/colors_manager.dart';

class TextInputField extends StatefulWidget {
  final String hintText;
  final TextEditingController _controller;
  final Color? hintTextColor;
  final double? hintTextFontSize;
  final bool? isFilled;
  final Color? fillColor;
  final TextInputAction? inputAction;
  final TextInputType? keyboardType;
  final bool? isPassword;

  const TextInputField({
    super.key,
    required this._controller,
    required this.hintText,
    this.fillColor,
    this.hintTextColor,
    this.hintTextFontSize,
    this.inputAction,
    this.keyboardType,
    this.isPassword,
    this.isFilled,
  });

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _obSecureText = true;

  @override
  Widget build(BuildContext context) {
    return widget.isFilled == true
        ? TextFormField(
            controller: widget._controller,
            textInputAction: widget.inputAction ?? TextInputAction.next,
            keyboardType: widget.keyboardType ?? .text,
            obscureText: _obSecureText,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword == true
                  ? Padding(
                      padding: .symmetric(
                        horizontal: Units.getHorizontalPadding(
                          context: context,
                          padding: 17,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obSecureText = !_obSecureText;
                          });
                        },
                        child: SvgPicture.asset(
                          _obSecureText
                              ? AssetsManager.eyeOutlinedIcon
                              : AssetsManager.eyeOffOutlinedIcon,
                          height: Units.getHeight(
                            context: context,
                            widgetheight: 24,
                          ),
                          width: Units.getWidth(
                            context: context,
                            widgetWidth: 24,
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),

              suffixIconConstraints: BoxConstraints(
                maxWidth: Units.getWidth(context: context, widgetWidth: 50),
              ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: widget.hintTextColor ?? ColorsManager.neutralGhostColor,
                fontSize:
                    widget.hintTextFontSize ??
                    Units.getFontSize(context: context, fontSize: 16),
              ),
              filled: widget.isFilled ?? true,
              fillColor:
                  widget.fillColor ?? ColorsManager.neutralBackgroundColor,
              contentPadding: .symmetric(
                horizontal: Units.getHorizontalPadding(
                  context: context,
                  padding: 16,
                ),
                vertical: Units.getVerticalPadding(
                  context: context,
                  padding: 16,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: .circular(
                  Units.getRadius(context: context, radius: 12),
                ),
                borderSide: BorderSide(
                  color: ColorsManager.neutralLineColor,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(
                  Units.getRadius(context: context, radius: 12),
                ),
                borderSide: BorderSide(
                  color: ColorsManager.neutralLineColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: .circular(
                  Units.getRadius(context: context, radius: 12),
                ),
                borderSide: BorderSide(
                  color: ColorsManager.brandPrimaryLightColor,
                  width: 1.5,
                ),
              ),
            ),
          )
        : TextFormField(
            cursorColor: ColorsManager.brandPrimaryLightColor,
            controller: widget._controller,
            textInputAction: widget.inputAction ?? TextInputAction.next,
            keyboardType: widget.keyboardType ?? .text,
            obscureText: _obSecureText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: widget.hintTextColor ?? ColorsManager.neutralGhostColor,
                fontSize:
                    widget.hintTextFontSize ??
                    Units.getFontSize(context: context, fontSize: 16),
              ),
              contentPadding: .symmetric(
                horizontal: Units.getHorizontalPadding(
                  context: context,
                  padding: 16,
                ),
                vertical: Units.getVerticalPadding(
                  context: context,
                  padding: 16,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsManager.neutralLineColor,
                  width: 1,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsManager.neutralLineColor,
                  width: 1,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsManager.brandPrimaryLightColor,
                  width: 1.5,
                ),
              ),
            ),
          );
  }
}
