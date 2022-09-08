import 'package:flutter/material.dart';
import 'package:places/res/const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final Widget? title;
  final double? toolbarHeight;

  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
    this.backgroundColor,
    this.bottom,
    this.leading,
    this.title,
    this.toolbarHeight,
  })  : preferredSize = Size.fromHeight(
          (toolbarHeight ?? AppConstants.kCustomAppBarToolBarHeight) +
              (bottom?.preferredSize.height ?? 0.0),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    const leadingWidth = AppConstants.kCustomAppBarToolBarHeight;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor ??
            backgroundColor ??
            Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      constraints: BoxConstraints(
        minHeight: preferredSize.height,
      ),
      child: Column(
        children: [
          Row(
            children: [
              if (leading != null)
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: leadingWidth,
                    maxWidth: leadingWidth,
                  ),
                  child: leading,
                ),
              if (title != null)
                Container(
                  padding: EdgeInsets.only(
                    left:
                        leading == null ? AppConstants.kSightCardPadding : 0.0,
                    right: AppConstants.kSightCardPadding,
                  ),
                  child: title,
                ),
            ],
          ),
          if (bottom != null) bottom!,
        ],
      ),
    );
  }
}
