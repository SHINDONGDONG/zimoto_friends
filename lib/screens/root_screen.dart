import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zimoto_friends/common/provider/bottom_navi_provider.dart';
import 'package:zimoto_friends/common/widgets/bottom_navi_widget.dart';
import 'package:zimoto_friends/screens/favorit_screen.dart';
import 'package:zimoto_friends/screens/home_screen.dart';
import 'package:zimoto_friends/screens/profile_screen.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationWidget(),
      body: IndexedStack(
        index: ref.watch(bottomNavigationProvider),
        children: const [
          HomeScreen(),
          FavoritScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
