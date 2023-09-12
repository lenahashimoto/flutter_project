import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cbi_bitte_flutter/themes.dart';
import 'package:cbi_bitte_flutter/gen/assets.gen.dart';

import 'search_vm.dart';
import '../impl/search_vm_impl.dart';

class SearchPage extends ConsumerStatefulWidget {
  static const path = '/search_page';
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final _vm = SearchVmImpl();

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
