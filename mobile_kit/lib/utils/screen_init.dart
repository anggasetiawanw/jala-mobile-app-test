import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nil/nil.dart';

class ScreenInit extends StatelessWidget {
  /// Creates an instance of [ScreenInit].
  ///
  /// The [builder] parameter is a required function that takes a
  /// [BuildContext] as input and returns a widget to be displayed on the
  /// screen. It represents the component to be initialized and rendered.
  const ScreenInit({
    required this.builder,
    super.key,
  });

  /// The function that builds the component and returns the widget
  /// to be rendered.
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: MediaQuery.textScalerOf(context).clamp(
            minScaleFactor: 1,
            maxScaleFactor: 1.1,
          ),
        ),
        child: LayoutBuilder(
          builder: (_, constraints) {
            if (constraints.maxWidth != 0) {
              ScreenUtil.init(
                _,
                designSize: Size(
                  constraints.maxWidth,
                  constraints.maxHeight,
                ),
              );
              return builder(context);
            }

            return nil;
          },
        ),
      );
}