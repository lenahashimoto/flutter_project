import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../result_list/result_list_page.dart';
import '../sample_page.dart';
import '../sample_vm.dart';

part 'sample_vm_impl.gvm.dart';

class SampleVmImpl
    with _$SampleVmImpl
    implements SampleVm {

  @override
  void init(WidgetRef ref) {
    _init(ref);
  }

}
