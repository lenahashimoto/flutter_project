import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'result_list_vm.dart';
import 'impl/result_list_vm_impl.dart';

class ResultListPage extends ConsumerStatefulWidget {
  static const path = '/result_list_page';
  const ResultListPage({super.key});

  @override
  ConsumerState<ResultListPage> createState() => _ResultListPageState();
}

class _ResultListPageState extends ConsumerState<ResultListPage> {
  final _vm = ResultListVmImpl();

  @override
  void initState() {
    super.initState();
    _vm.init(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
