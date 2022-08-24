import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _ContainerArea(
          margin: EdgeInsets.symmetric(horizontal: 20),
          opacity: 0.5,
          height: 100,
        ),
        const _ContainerArea(
          margin: EdgeInsets.symmetric(horizontal: 10),
          opacity: 0.75,
          height: 90,
        ),
        _ContainerArea(
          opacity: 1,
          height: 80,
          child: child,
        ),
      ],
    );
  }
}

class _ContainerArea extends StatelessWidget {
  const _ContainerArea(
      {Key? key,
      this.height = 100,
      this.margin,
      required this.opacity,
      this.child})
      : super(key: key);

  final double height;
  final EdgeInsets? margin;
  final double opacity;
  final Widget? child;

  ShapeBorder get shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
      width: double.infinity,
      height: height,
      decoration: ShapeDecoration(
          color: Colors.white.withOpacity(opacity), shape: shape),
      child: child,
    );
  }
}
