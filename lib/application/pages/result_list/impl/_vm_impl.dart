import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../_vm.dart';

part '_vm_impl.gvm.dart';

class VmImpl
    with _$VmImpl
    implements Vm {

  @override
  void init(WidgetRef ref) {
    _init(ref);
  }
}
