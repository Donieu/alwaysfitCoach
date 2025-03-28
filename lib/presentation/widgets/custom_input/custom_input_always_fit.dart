import 'package:alwaysfit/domain/entities/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputAlwaysFit extends StatefulWidget {
  final String label;
  final Color? fillColor;
  final Icon? suffixIcon;
  final Icon? icon;
  final int? maxLenght;
  final Color? color;
  final ValueChanged<String>? onChanged;
  final Function? onPressed;
  final FocusNode? focus;
  final FocusNode? nextFocus;
  final TextInputType? type;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool obscureText;
  final List<TextInputFormatter> inputFormatters;
  final IconData? suffix;
  final Function? onSuffix;
  final InputDecoration? inputDecoration;
  final bool? obscure;
  final String? hintText;
  final String? suffixText;
  final TextStyle? floatingLabelStyle;
  final Color? inputColor;
  final bool? enableInput;

  const CustomInputAlwaysFit({
    this.enableInput,
    this.fillColor,
    this.inputColor,
    this.inputDecoration,
    this.floatingLabelStyle,
    this.floatingLabelBehavior,
    this.hintText,
    this.onChanged,
    this.color,
    this.inputFormatters = const <TextInputFormatter>[],
    super.key,
    required this.label,
    this.suffixIcon,
    this.icon,
    this.onPressed,
    this.suffixText,
    this.focus,
    this.nextFocus,
    this.type,
    this.validator,
    required this.controller,
    this.obscureText = false,
    this.suffix,
    this.onSuffix,
    this.obscure,
    this.maxLenght,
  });

  @override
  _CustomInputAlwaysFitState createState() => _CustomInputAlwaysFitState();
}

class _CustomInputAlwaysFitState extends State<CustomInputAlwaysFit> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: ThemeConstants.minPadding,
      ),
      child: TextFormField(
        initialValue: null,
        enabled: widget.enableInput,
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w400),
        inputFormatters: widget.inputFormatters,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: widget.type,
        controller: widget.controller,
        maxLength: widget.maxLenght,
        focusNode: widget.focus,
        validator: widget.validator,
        onChanged: widget.onChanged,
        textAlign: TextAlign.left,
        onFieldSubmitted: (String value) => widget.nextFocus != null
            ? (FocusScope.of(context).requestFocus(widget.nextFocus))
            : widget.onPressed != null
                ? widget.onPressed!()
                : null,
        obscureText: widget.obscure != null ? _obscureText : widget.obscureText,
        decoration:
            (widget.inputDecoration ?? const InputDecoration()).copyWith(
          suffixText: widget.suffixText,
          suffixStyle: const TextStyle(
            color: Colors.black26,
            fontSize: 12,
          ),
          alignLabelWithHint: false,
          floatingLabelBehavior:
              widget.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
          contentPadding: const EdgeInsets.all(ThemeConstants.corner),
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.padding),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.corner),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.corner),
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          prefixIcon: widget.icon != null
              ? Theme(
                  data: Theme.of(context).copyWith(
                    primaryColor: Theme.of(context).iconTheme.color,
                  ),
                  child: Icon(
                    widget.icon!.icon,
                    size: 23,
                  ),
                )
              : null,
          labelText: widget.label,
          labelStyle: widget.floatingLabelStyle ??
              Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontSize: 14, fontWeight: FontWeight.w300),
          fillColor: widget.color ?? Theme.of(context).colorScheme.surface,
          filled: true,
          hintStyle: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 13),
          suffixIcon: widget.suffix != null
              ? IconButton(
                  icon: Icon(
                    _obscureText
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 23,
                  ),
                  onPressed: () {
                    if (widget.obscure != null && widget.obscure!) {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    }
                    if (widget.onSuffix != null) {
                      widget.onSuffix!();
                    }
                  },
                )
              : null,
        ),
      ),
    );
  }
}
