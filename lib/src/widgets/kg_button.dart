import 'package:flutter/material.dart';
import 'package:kg_kit/kg_kit.dart';

typedef FutureCallback = Future<void> Function();

enum KgButtonType {
  primary,
  outline,
  text,
}

class KgButton extends StatefulWidget {
  const KgButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.trailing,
    this.leading,
    this.width,
    this.isTransparent = false,
    this.type = KgButtonType.primary,
  }) : super(key: key);
  final String label;
  final Widget? trailing;
  final Widget? leading;
  final double? width;
  final FutureCallback onTap;
  final bool isTransparent;
  final KgButtonType type;

  @override
  State<KgButton> createState() => _KgButtonState();
}

class _KgButtonState extends State<KgButton> {
  bool isLoading = false;

  Color getOutlineColor() {
    return isLoading
        ? context.colors.colorScheme.primaryContainer
        : context.colors.primaryColor;
  }

  Color getTextColor() {
    switch (widget.type) {
      case KgButtonType.primary:
        return Theme.of(context).brightness == Brightness.light
            ? Colors.white.withOpacity(0.95)
            : context.themeUtils.textColor;
      case KgButtonType.outline:
      case KgButtonType.text:
      default:
        return getOutlineColor();
    }
  }

  Color getBackgroundColor() {
    switch (widget.type) {
      case KgButtonType.primary:
        return isLoading
            ? context.colors.colorScheme.primaryContainer
            : context.colors.primaryColor;
      case KgButtonType.outline:
      case KgButtonType.text:
      default:
        return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (isLoading) {
          return;
        }

        try {
          isLoading = true;
          setState(() {});
          await widget.onTap();
        } finally {
          isLoading = false;
          setState(() {});
        }
      },
      child: Container(
        width: widget.width,
        padding: pdW12H8,
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          borderRadius: context.themeUtils.borderRadius,
          border: widget.type == KgButtonType.outline
              ? Border.all(
                  color: getOutlineColor(),
                  width: 1,
                )
              : null,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Visibility(
                visible: isLoading,
                child: Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: getTextColor(),
                      strokeWidth: 2,
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !isLoading,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Text(
                widget.label,
                style: context.textTheme.button?.copyWith(
                  color: getTextColor(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
