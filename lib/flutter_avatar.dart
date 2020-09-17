library flutter_avatar;

import 'package:flutter/widgets.dart';

enum Shapes {
  Circle,
  Rectangle,
}

class FlutterAvatar extends StatelessWidget {
  const FlutterAvatar(
      {Key key,
      this.shape,
      this.child,
      this.backgroundColor,
      this.backgroundImage,
      this.backgroundImageError})
      : assert(shape != null),
        super(key: key);
  final Shapes shape;
  final Widget child;
  final Color backgroundColor;
  final ImageProvider backgroundImage;
  final ImageErrorListener backgroundImageError;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
