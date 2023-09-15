// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_list_vm_impl.dart';

// **************************************************************************
// VmGenerator
// **************************************************************************

mixin _$ResultListVmImpl {
  late final WidgetRef _ref;

  final _resultProvider = StateProvider<List<String>?>((ref) => []);

  final _keywordProvider = StateProvider<String>((ref) => '');

  List<String>? _result([List<String>? value]) {
    if (value != null) {
      _ref.read(_resultProvider.notifier).state = value;
    }
    return _ref.read(_resultProvider);
  }

  List<String>? get result {
    return _ref.watch(_resultProvider);
  }

  String _keyword([String? value]) {
    if (value != null) {
      _ref.read(_keywordProvider.notifier).state = value;
    }
    return _ref.read(_keywordProvider);
  }

  String get keyword {
    return _ref.watch(_keywordProvider);
  }

  void _init(WidgetRef ref) {
    _ref = ref;
  }
}
