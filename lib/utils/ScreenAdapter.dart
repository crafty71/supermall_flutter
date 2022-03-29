import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdaper {
  static init(context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(750, 1334),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait
    );
  }

  static height(double value) {
    return ScreenUtil().setWidth(value);
  }

  static width(double value) {
    return ScreenUtil().setWidth(value);
  }

  static getScreenHeight() {
    return ScreenUtil().screenWidth;
  }

  static getScreenWidth() {
    return ScreenUtil().screenHeight;
  }
// ScreenUtil.screenHeight
}

// ScreenAdaper
