import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../result_list_vm.dart';

part 'result_list_vm_impl.gvm.dart';

class ResultListVmImpl
    with _$ResultListVmImpl
    implements ResultListVm {

  @override
  void init(WidgetRef ref) {
    _init(ref);
  }
}
