import 'package:flutter/material.dart';

class AnimatedProfileImage extends StatefulWidget {
  final ScrollController scrollController;
  final Size containerSize;

  const AnimatedProfileImage({
    Key? key,
    required this.scrollController,
    required this.containerSize,
  }) : super(key: key);

  @override
  State<AnimatedProfileImage> createState() => _AnimatedProfileImageState();
}

class _AnimatedProfileImageState extends State<AnimatedProfileImage> {
  double _scrollOffset = 0.0;
  final double _maxScrollOffset = 300.0;
  final double _imageHeight = 200.0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_handleScroll);
    super.dispose();
  }

  void _handleScroll() {
    setState(() {
      _scrollOffset = widget.scrollController.offset.clamp(0.0, _maxScrollOffset);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate animation progress (0.0 to 1.0)
    final double animationProgress = _scrollOffset / _maxScrollOffset;

    // Start centered, move to right
    final double horizontalPosition =
        (widget.containerSize.width / 2 - _imageHeight / 2) * (1 - animationProgress) +
            (widget.containerSize.width - _imageHeight - 20) * animationProgress;

    // Start centered vertically, move slightly up
    final double verticalPosition =
        (widget.containerSize.height / 2 - _imageHeight / 2) * (1 - animationProgress) +
            20 * animationProgress;

    // Start normal size (1.0), scale up to 1.5
    final double scale = 1.0 + animationProgress * 0.5;

    return Positioned(
      left: horizontalPosition,
      top: verticalPosition,
      child: Transform.scale(
        scale: scale,
        child: Image.asset(
          'asset/images/dpimage.png',
          height: _imageHeight,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}