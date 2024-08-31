import 'package:flutter/material.dart';

import '/core/utils/assets_manager.dart';
import '/core/utils/color_manager.dart';
import 'package:flutter/cupertino.dart';

class WaveBackGroundWidget extends StatelessWidget {
  const WaveBackGroundWidget({
    super.key,
    required this.child,
    this.imagePath = AssetsManager.waveBackIMG,
  });

  final Widget child;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(

          imagePath,
          width: double.maxFinite,
          height: double.maxFinite,
          // color: ColorManager.primary.withOpacity(.1),
          // colorBlendMode: BlendMode.modulate,
          // color: Colors.black.withOpacity(0.2), // اللون الأسود مع شفافية بنسبة 20%

          fit: BoxFit.cover,
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.white.withOpacity(0.7),
        ),
        child
      ],
    );
  }
}
