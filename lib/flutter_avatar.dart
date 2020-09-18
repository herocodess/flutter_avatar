library flutter_avatar;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum BoxShape {
  Circle,
  Rectangle,
}

class FlutterAvatar extends StatelessWidget {
  const FlutterAvatar(
      {Key key,
      this.shape,
      this.child,
      this.backgroundColor,
      this.foregroundColor,
      this.backgroundImage,
      this.backgroundImageError})
      : assert(shape != null),
        super(key: key);
  final BoxShape shape;
  final Widget child;
  final Color backgroundColor;
  final Color foregroundColor;
  final ImageProvider backgroundImage;
  final ImageErrorListener backgroundImageError;
  final double radius = 0.0;
  final double minRadius = 0.0;
  final double maxRadius = 0.0;
  static const double _defaultRadius = 20.0;
  static const double _defaultMinRadius = 0.0;
  static const double _defaultMaxRadius = double.infinity;

  double get _minDiameter {
    if (radius == null && minRadius == null && maxRadius == null) {
      return _defaultRadius * 2.0;
    }
    return 2.0 * (radius ?? minRadius ?? _defaultMinRadius);
  }

  double get _maxDiameter {
    if (radius == null && minRadius == null && maxRadius == null) {
      return _defaultRadius * 2.0;
    }
    return 2.0 * (radius ?? maxRadius ?? _defaultMaxRadius);
  }

  double shapeCircle() {}
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    final ThemeData theme = Theme.of(context);
    TextStyle textStyle =
        theme.primaryTextTheme.subtitle1.copyWith(color: foregroundColor);
    Color eBackgroundColor = backgroundColor;
    if (shape == BoxShape.Circle) {}
  }
}
