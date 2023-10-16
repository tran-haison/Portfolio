import 'package:flutter/material.dart';

class CommonAssetImage extends StatefulWidget {
  const CommonAssetImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.radius,
    this.backgroundColor,
    this.padding,
    this.needPrecache = true,
  });

  final String image;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  final double? radius;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final bool needPrecache;

  @override
  State<CommonAssetImage> createState() => _CommonAssetImageState();
}

class _CommonAssetImageState extends State<CommonAssetImage> {
  var isImagePrecached = false;

  late final Image imageWidget;

  @override
  void initState() {
    super.initState();

    imageWidget = Image.asset(
      widget.image,
      color: widget.color,
      fit: widget.fit,
    );
  }

  @override
  void didChangeDependencies() {
    if (!isImagePrecached && widget.needPrecache) {
      precacheImage(imageWidget.image, context);
      isImagePrecached = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(widget.radius ?? 0),
      ),
      padding: widget.padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.radius ?? 0),
        child: imageWidget,
      ),
    );
  }
}
