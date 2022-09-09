import 'package:flutter/material.dart';
import 'package:places/res/const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final bool centerTitle;
  final Widget? title;
  final double? toolbarHeight;

  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
    this.backgroundColor,
    this.centerTitle = false,
    this.title,
    this.toolbarHeight,
  })  : preferredSize = Size.fromHeight(
          toolbarHeight ?? AppConstants.kCustomAppBarToolBarHeight,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor ??
            backgroundColor ??
            Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.only(
        left: AppConstants.kSightCardPadding,
        top: MediaQuery.of(context).padding.top,
        right: AppConstants.kSightCardPadding,
      ),
      constraints: BoxConstraints(
        minHeight: preferredSize.height,
      ),
      child: title ??
          SizedBox(
            height: preferredSize.height,
          ),
    );
  }
}
