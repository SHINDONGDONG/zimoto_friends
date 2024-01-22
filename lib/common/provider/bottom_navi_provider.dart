import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navi_provider.g.dart';

@riverpod
class BottomNavigation extends _$BottomNavigation {
  @override
  int build() => 0;

  void setState(int index) {
    state = index;
  }
}
