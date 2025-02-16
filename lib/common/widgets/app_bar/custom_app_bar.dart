import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.showUnderline = false,
    this.showBackButton = false,
    this.bottomLineHorizontalMargin = 0,
    this.contentHorizontalMargin = 0,
    this.onBackButtonPressed,
    this.disableBackButton = false,
    this.spacing = 16,
    this.actions,
    this.backgroundColor,
    this.titleColor,
    this.backButtonPadding,
    this.centerTitle = true,
  });

  final String title;
  final bool showUnderline;
  final bool showBackButton;
  final double bottomLineHorizontalMargin;
  final double contentHorizontalMargin;
  final VoidCallback? onBackButtonPressed;
  final bool disableBackButton;
  final double spacing;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? titleColor;
  final EdgeInsetsGeometry? backButtonPadding;
  final bool? centerTitle;

  @override
  final Size preferredSize = const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ),
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: contentHorizontalMargin),
          child: Row(
            mainAxisAlignment: centerTitle == true
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              if (showBackButton)
                Padding(
                  padding: backButtonPadding ?? EdgeInsets.only(left: 24.w),
                  child: IconButton(
                    alignment: Alignment.centerLeft,
                    splashRadius: 24.r,
                    icon: Icon(
                      Icons.chevron_left,
                      size: 28.r,
                    ),
                    color: Colors.black,
                    onPressed: disableBackButton
                        ? null
                        : onBackButtonPressed ?? () => Modular.to.pop(),
                  ),
                ),
              if (title.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(bottom: showBackButton ? 0.h : 12.h),
                  child: Text(
                    title.tr(),
                    style: TextStyle(
                      color: titleColor ?? Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              if (actions != null) ...actions!,
            ],
          ),
        ),
      ),
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: 0,
      bottom: showUnderline
          ? PreferredSize(
              preferredSize: Size.fromHeight(4.h),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: bottomLineHorizontalMargin,
                ),
                color: Colors.grey.withValues(alpha: 0.15),
                height: 1,
              ),
            )
          : null,
    );
  }
}
