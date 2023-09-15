import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widgets/templates/not_login_template.dart';

import 'sample_vm.dart';
import 'impl/sample_vm_impl.dart';

class SamplePage extends ConsumerStatefulWidget {
  static const path = '/sample_page';
  const SamplePage({super.key});

  @override
  ConsumerState<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends ConsumerState<SamplePage> {
  final _vm = SampleVmImpl();

  @override
  void initState() {
    super.initState();
    _vm.init(ref);
  }

  @override
  Widget build(BuildContext context) {
    return NotLoginTemplate(
        appTitle: 'Sample',
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'サンプルです。',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ));
  }
}
