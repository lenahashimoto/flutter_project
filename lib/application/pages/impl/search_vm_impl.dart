import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../search_vm.dart';

part 'search_vm_impl.gvm.dart';

class SearchVmImpl
    with _$SearchVmImpl
    implements SearchVm {

  @override
  void init(WidgetRef ref) {
    _init(ref);
  }
}
