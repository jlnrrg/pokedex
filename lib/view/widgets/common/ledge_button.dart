import 'package:flutter/material.dart';

enum StickDirection { left, right, up, down }

class LedgeButton extends StatelessWidget {
  const LedgeButton(
      {Key? key,
      this.stickDirection = StickDirection.left,
      this.onPressed,
      this.borderColor = Colors.transparent,
      this.borderWidth = 0.25,
      this.color,
      this.icon,
      this.shortSide = 35,
      this.wideSide = 100,
      this.elevation})
      : super(key: key);

  final StickDirection stickDirection;
  final VoidCallback? onPressed;
  final Color borderColor;
  final double borderWidth;
  final Color? color;
  final Icon? icon;
  final double wideSide;
  final double shortSide;
  final double? elevation;

  double get width =>
      [StickDirection.left, StickDirection.right].contains(stickDirection)
          ? shortSide
          : wideSide;

  double get height =>
      [StickDirection.left, StickDirection.right].contains(stickDirection)
          ? wideSide
          : shortSide;

  @override
  Widget build(BuildContext context) {
    final MyCustomClipper clipper =
        MyCustomClipper(stickDirection: stickDirection);

    return SizedBox(
        width: width,
        height: height,
        // alignment: stickDirection == StickDirection.left
        //     ? Alignment.topLeft
        //     : Alignment.centerRight,
        child: CustomPaint(
            painter: _MyBoxPainter(
              context: context,
              clipper: clipper,
              borderWidth: borderWidth,
              borderColor: borderColor,
              elevation: elevation,
            ),
            child: ClipPath(
              clipper: clipper,
              child: GestureDetector(
                  onTap: onPressed,
                  child: Container(color: color, child: icon)),
            )));
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  MyCustomClipper({required this.stickDirection}) : super();

  final StickDirection stickDirection;

  Path _getLPath({required Size size, required bool closeLine}) {
    final Path path = Path();

    final Offset controllPoint11 = Offset(0, size.height / 6);
    final Offset controllPoint12 = Offset(size.width, size.height / 6);
    final Offset checkPoint1 = Offset(size.width, size.height * 0.5);

    final Offset controllPoint21 = Offset(size.width, (size.height / 6) * 5);
    final Offset controllPoint22 = Offset(0, (size.height / 6) * 5);
    final Offset checkPoint2 = Offset(0, size.height);

    path.cubicTo(controllPoint11.dx, controllPoint11.dy, controllPoint12.dx,
        controllPoint12.dy, checkPoint1.dx, checkPoint1.dy);

    path.cubicTo(controllPoint21.dx, controllPoint21.dy, controllPoint22.dx,
        controllPoint22.dy, checkPoint2.dx, checkPoint2.dy);

    if (closeLine) {
      path.lineTo(0, size.height);
      path.close();
    }
    return path;
  }

  Path _getRPath({required Size size, required bool closeLine}) {
    final Path path = Path();

    path.moveTo(size.width, 0);

    final Offset controllPoint11 = Offset(size.width, size.height / 6);
    final Offset controllPoint12 = Offset(0, size.height / 6);
    final Offset checkPoint1 = Offset(0, size.height * 0.5);

    final Offset controllPoint21 = Offset(0, (size.height / 6) * 5);
    final Offset controllPoint22 = Offset(size.width, (size.height / 6) * 5);
    final Offset checkPoint2 = Offset(size.width, size.height);

    path.cubicTo(controllPoint11.dx, controllPoint11.dy, controllPoint12.dx,
        controllPoint12.dy, checkPoint1.dx, checkPoint1.dy);

    path.cubicTo(controllPoint21.dx, controllPoint21.dy, controllPoint22.dx,
        controllPoint22.dy, checkPoint2.dx, checkPoint2.dy);

    if (closeLine) {
      path.lineTo(size.width, 0);
      path.close();
    }
    return path;
  }

  Path _getBPath({required Size size, required bool closeLine}) {
    final Path path = Path();

    final Offset controllPoint11 = Offset(size.width / 6, 0);
    final Offset controllPoint12 = Offset(size.width / 6, size.height);
    final Offset checkPoint1 = Offset(size.width * 0.5, size.height);

    final Offset controllPoint21 = Offset((size.width / 6) * 5, size.height);
    final Offset controllPoint22 = Offset((size.width / 6) * 5, 0);
    final Offset checkPoint2 = Offset(size.width, 0);

    path.cubicTo(controllPoint11.dx, controllPoint11.dy, controllPoint12.dx,
        controllPoint12.dy, checkPoint1.dx, checkPoint1.dy);

    path.cubicTo(controllPoint21.dx, controllPoint21.dy, controllPoint22.dx,
        controllPoint22.dy, checkPoint2.dx, checkPoint2.dy);

    if (closeLine) {
      path.lineTo(size.width, 0);
      path.close();
    }
    return path;
  }

  Path _getUPath({required Size size, required bool closeLine}) {
    final Path path = Path();

    path.moveTo(0, size.height);

    final Offset controllPoint11 = Offset(size.width / 6, size.height);
    final Offset controllPoint12 = Offset(
      size.width / 6,
      0,
    );
    final Offset checkPoint1 = Offset(
      size.width * 0.5,
      0,
    );

    final Offset controllPoint21 = Offset(
      (size.width / 6) * 5,
      0,
    );
    final Offset controllPoint22 = Offset((size.width / 6) * 5, size.height);
    final Offset checkPoint2 = Offset(size.width, size.height);

    path.cubicTo(controllPoint11.dx, controllPoint11.dy, controllPoint12.dx,
        controllPoint12.dy, checkPoint1.dx, checkPoint1.dy);

    path.cubicTo(controllPoint21.dx, controllPoint21.dy, controllPoint22.dx,
        controllPoint22.dy, checkPoint2.dx, checkPoint2.dy);

    if (closeLine) {
      path.lineTo(size.width, size.height);
      path.close();
    }
    return path;
  }

  Path getPathByStickDirection({required Size size, bool closeLine = true}) {
    if (stickDirection == StickDirection.left) {
      return _getLPath(size: size, closeLine: closeLine);
    } else if (stickDirection == StickDirection.right) {
      return _getRPath(size: size, closeLine: closeLine);
    } else if (stickDirection == StickDirection.down) {
      return _getBPath(size: size, closeLine: closeLine);
    } else {
      return _getUPath(size: size, closeLine: closeLine);
    }
  }

  @override
  Path getClip(Size size) {
    return getPathByStickDirection(size: size);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class _MyBoxPainter extends CustomPainter {
  _MyBoxPainter({
    required this.context,
    required this.clipper,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.25,
    required this.elevation,
  });
  final BuildContext context;
  final MyCustomClipper clipper;
  final Color borderColor;
  final double borderWidth;
  final double? elevation;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..color = borderColor;

    final Path clipPath =
        clipper.getPathByStickDirection(size: size, closeLine: false);
    canvas.drawPath(clipPath, paint);
    if (elevation != null) {
      canvas.drawShadow(clipPath, Colors.black, elevation!, false);
    }

    // canvas.drawShadow(clipPath, Colors.black, 5, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
