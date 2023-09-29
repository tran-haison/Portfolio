import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mathema_ebook_reader/presentation/widgets/common_text_styles.dart';

import '../res/colors.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.textInputAction,
    this.hintStyle,
    this.hintText,
    this.isPasswordType = false,
    this.inputFormatters,
    this.keyboardType,
    this.focusNode,
    this.styles,
    this.autoFocus,
    this.maxLength = 512,
    this.enable = true,
    this.validator,
    this.fillColor,
    this.radius,
    this.borderColor,
    this.borderFocusColor,
    this.errorText,
    this.onEditingComplete,
    this.onSubmitted,
    this.onFocusChange,
  }) : super(key: key);

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextStyle? hintStyle;
  final TextStyle? styles;
  final String? hintText;
  final bool isPasswordType;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final int maxLength;
  final bool enable;
  final FormFieldValidator<String>? validator;
  final Color? fillColor;
  final double? radius;
  final Color? borderColor;
  final Color? borderFocusColor;
  final String? errorText;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final Function(bool)? onFocusChange;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool _passwordVisible = false;

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_onChangedListener);
    _passwordVisible = !widget.isPasswordType;
  }

  @override
  void dispose() {
    _controller.removeListener(_onChangedListener);
    _controller.dispose();
    super.dispose();
  }

  void _onChangedListener() {
    setState(() {});
  }

  bool get _clearVisible {
    return _controller.text.isNotEmpty &&
        !widget.isPasswordType &&
        widget.enable;
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: widget.borderColor ?? ColorsRes.gray200),
      borderRadius: BorderRadius.circular(widget.radius ?? 10),
    );
    final focusBorder = OutlineInputBorder(
      borderSide:
          BorderSide(color: widget.borderFocusColor ?? ColorsRes.primary),
      borderRadius: BorderRadius.circular(widget.radius ?? 10),
    );
    final errorBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: ColorsRes.red),
      borderRadius: BorderRadius.circular(widget.radius ?? 10),
    );
    return Focus(
      onFocusChange: widget.onFocusChange,
      child: TextFormField(
        key: widget.key,
        enabled: widget.enable,
        keyboardAppearance: Brightness.light,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        controller: _controller,
        obscureText: !_passwordVisible,
        autofocus: widget.autoFocus ?? false,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
        inputFormatters: widget.inputFormatters,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        focusNode: widget.focusNode,
        maxLength: widget.maxLength,
        style: widget.styles,
        onEditingComplete: widget.onEditingComplete,
        decoration: InputDecoration(
          border: border,
          focusedBorder: focusBorder,
          enabledBorder: border,
          disabledBorder: border,
          contentPadding: EdgeInsets.only(
            top: 12,
            bottom: 12,
            left: 12,
            right: _clearVisible ? 0 : 12,
          ),
          hintStyle: widget.hintStyle,
          isDense: false,
          hintText: widget.hintText,
          counterText: '',
          suffixIcon: _buildSuffixIcon(),
          fillColor: widget.fillColor,
          filled: widget.fillColor != null,
          errorText: widget.errorText,
          errorStyle: CommonTextStyles.normal.copyWith(
            color: ColorsRes.red,
          ),
          errorBorder: errorBorder,
        ),
        validator: widget.validator,
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    return widget.isPasswordType
        ? IconButton(
            key: const ValueKey('_passwordVisible'),
            splashColor: Colors.transparent,
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )
        : (_clearVisible && widget.enable)
            ? IconButton(
                key: const ValueKey('_clearVisible'),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.clear,
                  color: Colors.grey,
                ),
                onPressed: () {
                  _controller.text = '';
                  widget.onChanged?.call('');
                },
              )
            : null;
  }
}
