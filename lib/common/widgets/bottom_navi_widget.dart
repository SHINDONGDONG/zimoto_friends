import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zimoto_friends/common/provider/bottom_navi_provider.dart';

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      currentIndex: ref.watch(bottomNavigationProvider),
      onTap: (index) =>
          ref.read(bottomNavigationProvider.notifier).setState(index),
      items: const [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: ""),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
            ),
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: ""),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
            ),
            icon: Icon(
              Icons.person_outline,
            ),
            label: ""),
      ],
    );
  }
}
