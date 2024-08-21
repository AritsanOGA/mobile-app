import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

loader(BuildContext context) {
  return showDialog(
    context: context,
    //  barrierColor: Colors.black.withOpacity(0.6),
    builder: (BuildContext context) {
      return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Center(
            child: LoadingAnimationWidget.twistingDots(
              leftDotColor: Color.fromARGB(255, 255, 255, 255),
              rightDotColor: Colors.orange,
              size: 50,
            ),
          ));
    },
  );
}
