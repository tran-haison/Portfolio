import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/dimens.dart';
import 'common_gaps.dart';
import 'common_text_styles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.formKey,
    this.backgroundColor,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(vertical: DimensRes.sp12),
    this.borderRadius = DimensRes.sp12,
    this.borderSide = BorderSide.none,
    this.isDisable = false,
    this.leadingIcon,
    this.backIcon,
  }) : super(key: key);

  final GlobalKey<FormState>? formKey;
  final Function() onPressed;
  final String title;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final BorderSide borderSide;
  final bool isDisable;
  final Widget? leadingIcon;
  final Widget? backIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisable
          ? null
          : () {
              if (formKey != null) {
                final currentState = formKey!.currentState;
                if (currentState == null || !currentState.validate()) {
                  return;
                }
              }
              onPressed();
            },
      style: ButtonStyle(
        elevation: WidgetStateProperty.resolveWith((states) => 0),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => isDisable
              ? ColorsRes.textDisable
              : (backgroundColor ?? ColorsRes.primary),
        ),
        padding: WidgetStateProperty.resolveWith((states) => padding),
        shape: WidgetStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderSide,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leadingIcon != null) ...[
            leadingIcon!,
            Gaps.hGap10,
          ],
          Flexible(
            child: Text(
              title,
              style: textStyle ??
                  CommonTextStyles.mediumBold.copyWith(
                    color: ColorsRes.white,
                  ),
              textAlign: TextAlign.center,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (backIcon != null) ...[
            Gaps.hGap10,
            backIcon!,
          ],
        ],
      ),
    );
  }
}
