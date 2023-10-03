import 'package:flutter/material.dart';

ScrollController scrollController = ScrollController();

class ScrollHelper {
  static ScrollToTop(double h) {
    scrollController.animateTo(
      2 * h,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  static void scrollToBottom() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  static void scrollToIndex(int specificIndex) {
    if (specificIndex >= 0) {
      double estimatedItemHeight =
          235.0; // Replace with your estimated item height
      double scrollOffset = specificIndex * estimatedItemHeight;

      scrollController.animateTo(
        scrollOffset,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}
