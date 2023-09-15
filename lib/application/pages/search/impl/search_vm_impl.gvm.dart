// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_vm_impl.dart';

// **************************************************************************
// VmGenerator
// **************************************************************************

mixin _$SearchVmImpl {
  late final WidgetRef _ref;

  final _keywordProvider = StateProvider<String>((ref) => '');

  final _canTapSearchProvider = StateProvider<bool>((ref) => false);

  String _keyword([String? value]) {
    if (value != null) {
      _ref.read(_keywordProvider.notifier).state = value;
    }
    return _ref.read(_keywordProvider);
  }

  String get keyword {
    return _ref.watch(_keywordProvider);
  }

  bool _canTapSearch([bool? value]) {
    if (value != null) {
      _ref.read(_canTapSearchProvider.notifier).state = value;
    }
    return _ref.read(_canTapSearchProvider);
  }

  bool get canTapSearch {
    return _ref.watch(_canTapSearchProvider);
  }

  void _init(WidgetRef ref) {
    _ref = ref;
  }
}
