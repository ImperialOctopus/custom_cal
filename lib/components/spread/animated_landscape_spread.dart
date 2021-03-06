import 'package:flutter/material.dart';
import '../animation/flip_direction.dart';
import '../animation/landscape_flip.dart';
import '../spread/landscape_spread.dart';

import '../page/page_component.dart';
import '../../model/bookmark.dart';

/// Spread of two pages arranged for landscape viewing.
class AnimatedLandscapeSpread extends StatelessWidget {
  final Bookmark startBookmark;
  final Bookmark endBookmark;
  final FlipDirection flipDirection;
  final Animation animation;
  final Function(int, int) hyperlinkFunction;

  const AnimatedLandscapeSpread({
    @required this.startBookmark,
    @required this.endBookmark,
    @required this.flipDirection,
    @required this.animation,
    @required this.hyperlinkFunction,
  });

  bool get _running => !animation.isCompleted;

  @override
  Widget build(BuildContext context) {
    if (_running) {
      return AnimatedBuilder(
        animation: animation,
        builder: (_, __) => LandscapeFlip(
          flipDirection: flipDirection,
          animation: animation,
          leftStart: _leftStartPage,
          leftEnd: _leftEndPage,
          rightStart: _rightStartPage,
          rightEnd: _rightEndPage,
        ),
      );
    } else {
      return LandscapeSpread(
        bookmark: endBookmark,
        hyperlinkFunction: hyperlinkFunction,
      );
    }
  }

  Widget get _leftStartPage => PageComponent(
        page: startBookmark.page,
        foldEdge: FoldEdge.right,
        hyperlinkFunction: hyperlinkFunction,
      );

  Widget get _leftEndPage => PageComponent(
        page: endBookmark.page,
        foldEdge: FoldEdge.right,
        hyperlinkFunction: hyperlinkFunction,
      );

  Widget get _rightStartPage => PageComponent(
        page: startBookmark.getPageInSection(1),
        foldEdge: FoldEdge.left,
        hyperlinkFunction: hyperlinkFunction,
      );

  Widget get _rightEndPage => PageComponent(
        page: endBookmark.getPageInSection(1),
        foldEdge: FoldEdge.left,
        hyperlinkFunction: hyperlinkFunction,
      );
}
