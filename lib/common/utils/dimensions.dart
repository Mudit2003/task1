import 'dart:math';

import 'package:flutter/material.dart';

class AppDimensions {
  // init method for screensize
  static void init(Size size) {
    _screenHeight = size.height;
    _screenWidth = size.width;
  }

  // update method for screensize
  static void update(Size size) {
    _screenHeight = size.height;
    _screenWidth = size.width;
  }

  static double _screenHeight = 736;
  static double _screenWidth = 414;

  static double get screenHeight => _screenHeight;
  static double get screenWidth => _screenWidth;

  // figma canvas on which the design is Iphone 6 / 7 / 8
  static const double _canvasHeight = 736;
  static const double _canvasWidth = 414;

  static double get canvasHeight => _canvasHeight;
  static double get canvasWidth => _canvasWidth;

// scaling logic
  static double get _heightScaleFactor => _screenHeight / _canvasHeight;
  static double get _widthScaleFactor => _screenWidth / _canvasWidth;
  static double get _textScaleFactor {
    if (_screenHeight > 2 * _screenWidth) {
      return _widthScaleFactor;
    } else if (_screenWidth > _screenHeight) {
      return _heightScaleFactor;
    } else {
      return sqrt(_heightScaleFactor * _widthScaleFactor);
    }
  }

  static EdgeInsetsDirectional get appPadding =>
      EdgeInsetsDirectional.symmetric(
        horizontal: 30 * _widthScaleFactor,
        vertical: 30 * _heightScaleFactor,
      );

  static EdgeInsetsDirectional get widgetPadding =>
      EdgeInsetsDirectional.symmetric(
        horizontal: _widthScaleFactor,
        vertical: _heightScaleFactor,
      );

  static double get radius => 5 * _textScaleFactor;
  static double get radius3 => 25 * _textScaleFactor;
  static double get radius2 => 10 * _textScaleFactor;

  static double get circularContainerWidth1 => 48 * _widthScaleFactor;
  static double get circularContainerHeight1 => 48 * _heightScaleFactor;

  static double get circularContainerWidth2 => 56 * _widthScaleFactor;
  static double get circularContainerHeight2 => 56 * _heightScaleFactor;

  static double get largeTextSize => 19 * _textScaleFactor;
  static double get smallTextSize => 12 * _textScaleFactor;
  static double get mediumTextSize => 16 * _textScaleFactor;
  static double get buttonTextSize => 14 * _textScaleFactor;
  static double get verySmallTextSize => 8 * _textScaleFactor;

  static double get textAndIconButtonHeight => 46 * _heightScaleFactor;
  static double get textAndIconButtonWidth => 169 * _widthScaleFactor;

  static double get iconSize2 => 24 * _textScaleFactor;
  static double get iconSize1 => 16 * _textScaleFactor;

  static double get listTileSeperationHorizontal => 16 * _widthScaleFactor;
  static double get listTileSeperationVertical => 16 * _heightScaleFactor;

  static double get customTextButtonHeight => 33.0 * _heightScaleFactor;
  static double get customTextButtonWidth => 108.09 * _widthScaleFactor;

  static double get singleTileContainerHeight => 185 * _heightScaleFactor;
  static double get communityBannerHeight => 136 * _heightScaleFactor;

  static double get doubleTileContainerHeight => 204 * _heightScaleFactor;
  static double get doubleTileContainerWidth => 169 * _widthScaleFactor;

  static double get maxUsableWidth => 354 * _widthScaleFactor;

  static double get imageEllipsWidth => 72.68182 * _widthScaleFactor;
  static double get imageEllipsHeight => 72.68182 * _heightScaleFactor;
  static double get imageEllipsBorder => 2.5 * _textScaleFactor;
  static double get communityTextWidth => 188 * _widthScaleFactor;

  static double get bloodBankContainerHeight => 169 * _heightScaleFactor;

  static double get topDonorRadius => 108.26 * _textScaleFactor;
  static double get runnerupDonorRadius => 81.19 * _textScaleFactor;

  static EdgeInsetsDirectional get textButtonActivePadding =>
      EdgeInsetsDirectional.symmetric(
        vertical: 4 * _heightScaleFactor,
        horizontal: 43 * _widthScaleFactor,
      );

  static EdgeInsetsDirectional get textButtonInactivePadding =>
      EdgeInsetsDirectional.symmetric(
        vertical: 4 * _heightScaleFactor,
        horizontal: 4 * _widthScaleFactor,
      );

  static double get circularBorderWidth => 3.0 * _textScaleFactor;

  static double get verticalSpace1 => 35 * _heightScaleFactor;
  static double get horizontalSpace1 => 8 * _widthScaleFactor;
}
