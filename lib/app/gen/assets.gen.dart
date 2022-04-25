/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic-camera.svg
  SvgGenImage get icCamera => const SvgGenImage('assets/icons/ic-camera.svg');

  /// File path: assets/icons/ic-characters-hide.svg
  SvgGenImage get icCharactersHide =>
      const SvgGenImage('assets/icons/ic-characters-hide.svg');

  /// File path: assets/icons/ic-checkbox-empty.svg
  SvgGenImage get icCheckboxEmpty =>
      const SvgGenImage('assets/icons/ic-checkbox-empty.svg');

  /// File path: assets/icons/ic-checkbox-filled.svg
  SvgGenImage get icCheckboxFilled =>
      const SvgGenImage('assets/icons/ic-checkbox-filled.svg');

  /// File path: assets/icons/ic-fab-button.svg
  SvgGenImage get icFabButton =>
      const SvgGenImage('assets/icons/ic-fab-button.svg');

  /// File path: assets/icons/ic-hide-password.svg
  SvgGenImage get icHidePassword =>
      const SvgGenImage('assets/icons/ic-hide-password.svg');

  /// File path: assets/icons/ic-logout.svg
  SvgGenImage get icLogout => const SvgGenImage('assets/icons/ic-logout.svg');

  /// File path: assets/icons/ic-navigate-back.svg
  SvgGenImage get icNavigateBack =>
      const SvgGenImage('assets/icons/ic-navigate-back.svg');

  /// File path: assets/icons/ic-navigation-chevron-right-medium.svg
  SvgGenImage get icNavigationChevronRightMedium =>
      const SvgGenImage('assets/icons/ic-navigation-chevron-right-medium.svg');

  /// File path: assets/icons/ic-thumbs-down-fill-small.svg
  SvgGenImage get icThumbsDownFillSmall =>
      const SvgGenImage('assets/icons/ic-thumbs-down-fill-small.svg');

  /// File path: assets/icons/ic-thumbs-down-white.svg
  SvgGenImage get icThumbsDownWhite =>
      const SvgGenImage('assets/icons/ic-thumbs-down-white.svg');

  /// File path: assets/icons/ic-thumbs-down.svg
  SvgGenImage get icThumbsDown =>
      const SvgGenImage('assets/icons/ic-thumbs-down.svg');

  /// File path: assets/icons/ic-thumbs-up-fill-small.svg
  SvgGenImage get icThumbsUpFillSmall =>
      const SvgGenImage('assets/icons/ic-thumbs-up-fill-small.svg');

  /// File path: assets/icons/ic-thumbs-up-white.svg
  SvgGenImage get icThumbsUpWhite =>
      const SvgGenImage('assets/icons/ic-thumbs-up-white.svg');

  /// File path: assets/icons/ic-thumbs-up.svg
  SvgGenImage get icThumbsUp =>
      const SvgGenImage('assets/icons/ic-thumbs-up.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img-login-logo.svg
  SvgGenImage get imgLoginLogo =>
      const SvgGenImage('assets/images/img-login-logo.svg');

  /// File path: assets/images/img-placeholder-user1.svg
  SvgGenImage get imgPlaceholderUser1 =>
      const SvgGenImage('assets/images/img-placeholder-user1.svg');

  /// File path: assets/images/img-placeholder-user2.svg
  SvgGenImage get imgPlaceholderUser2 =>
      const SvgGenImage('assets/images/img-placeholder-user2.svg');

  /// File path: assets/images/img-placeholder-user3.svg
  SvgGenImage get imgPlaceholderUser3 =>
      const SvgGenImage('assets/images/img-placeholder-user3.svg');

  /// File path: assets/images/img-placeholder.png
  AssetGenImage get imgPlaceholder =>
      const AssetGenImage('assets/images/img-placeholder.png');

  /// File path: assets/images/img-splash-logo.svg
  SvgGenImage get imgSplashLogo =>
      const SvgGenImage('assets/images/img-splash-logo.svg');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const AssetGenImage launcherIcon =
      AssetGenImage('assets/launcher_icon.png');
  static const AssetGenImage splashLogoAndroid12 =
      AssetGenImage('assets/splash-logo-android12.png');
  static const AssetGenImage splashLogo =
      AssetGenImage('assets/splash-logo.png');
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
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
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
