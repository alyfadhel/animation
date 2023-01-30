import 'package:flutter/cupertino.dart';

class SliderPage extends PageRouteBuilder {
  final page;

  SliderPage({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            const begin = Offset(-1.0, 1.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

/////////////////////////////////////////////////////

class SliderCurve extends PageRouteBuilder {
  final page;

  SliderCurve({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            const begin = Offset(-1.0, 1.0);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final curvesAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.fastLinearToSlowEaseIn,
            );
            return SlideTransition(
              position: tween.animate(curvesAnimation),
              child: child,
            );
          },
        );
}

/////////////////////////////////////////////////////

class ScaledPage extends PageRouteBuilder {
  final page;

  ScaledPage({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween(begin: begin, end: end);
            final curvesAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.linearToEaseOut,
            );
            return ScaleTransition(
              scale: tween.animate(curvesAnimation),
              child: child,
            );
          },
        );
}

//////////////////////////////////////////////////////

class RotationPage extends PageRouteBuilder {
  final page;

  RotationPage({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween(begin: begin, end: end);
            final curvesAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.linearToEaseOut,
            );
            return RotationTransition(
              turns: tween.animate(curvesAnimation),
              child: child,
            );
          },
        );
}

//////////////////////////////////////////////////////

class AlignPage extends PageRouteBuilder {
  final page;

  AlignPage({this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        );
}

//////////////////////////////////////////////////////


class FadePage extends PageRouteBuilder {
  final page;

  FadePage({this.page})
      : super(
    pageBuilder: (context, animation, animationTwo) => page,
    transitionsBuilder: (context, animation, animationTwo, child) {
      return FadeTransition(opacity: animation,child: child,);
    },
  );
}

