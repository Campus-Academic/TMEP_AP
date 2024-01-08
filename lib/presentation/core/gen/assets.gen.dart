/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_forward_ios.svg
  SvgGenImage get arrowForwardIos =>
      const SvgGenImage('assets/icons/arrow_forward_ios.svg');

  /// File path: assets/icons/brand_awareness.svg
  SvgGenImage get brandAwareness =>
      const SvgGenImage('assets/icons/brand_awareness.svg');

  /// File path: assets/icons/flag.svg
  SvgGenImage get flag => const SvgGenImage('assets/icons/flag.svg');

  /// File path: assets/icons/pace.svg
  SvgGenImage get pace => const SvgGenImage('assets/icons/pace.svg');

  /// File path: assets/icons/sell.svg
  SvgGenImage get sell => const SvgGenImage('assets/icons/sell.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [arrowForwardIos, brandAwareness, flag, pace, sell];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesBackgroundGen get background =>
      const $AssetsImagesBackgroundGen();
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  $AssetsJsonMockGen get mock => const $AssetsJsonMockGen();
}

class $AssetsMockGen {
  const $AssetsMockGen();

  /// File path: assets/mock/banner.png
  AssetGenImage get banner => const AssetGenImage('assets/mock/banner.png');

  /// File path: assets/mock/test1.png
  AssetGenImage get test1 => const AssetGenImage('assets/mock/test1.png');

  /// File path: assets/mock/test2.png
  AssetGenImage get test2 => const AssetGenImage('assets/mock/test2.png');

  /// File path: assets/mock/test3.png
  AssetGenImage get test3 => const AssetGenImage('assets/mock/test3.png');

  /// List of all assets
  List<AssetGenImage> get values => [banner, test1, test2, test3];
}

class $AssetsImagesBackgroundGen {
  const $AssetsImagesBackgroundGen();

  /// File path: assets/images/background/bus-banner-cover.png
  AssetGenImage get busBannerCover =>
      const AssetGenImage('assets/images/background/bus-banner-cover.png');

  /// File path: assets/images/background/cover.svg
  SvgGenImage get cover =>
      const SvgGenImage('assets/images/background/cover.svg');

  /// File path: assets/images/background/home_background.svg
  SvgGenImage get homeBackground =>
      const SvgGenImage('assets/images/background/home_background.svg');

  /// File path: assets/images/background/undraw_book_lover_re_rwjy 1.svg
  SvgGenImage get undrawBookLoverReRwjy1 => const SvgGenImage(
      'assets/images/background/undraw_book_lover_re_rwjy 1.svg');

  /// List of all assets
  List<dynamic> get values =>
      [busBannerCover, cover, homeBackground, undrawBookLoverReRwjy1];
}

class $AssetsJsonMockGen {
  const $AssetsJsonMockGen();

  /// File path: assets/json/mock/CourseData.json
  String get courseData => 'assets/json/mock/CourseData.json';

  /// File path: assets/json/mock/Notification.json
  String get notification => 'assets/json/mock/Notification.json';

  /// List of all assets
  List<String> get values => [courseData, notification];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsMockGen mock = $AssetsMockGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
