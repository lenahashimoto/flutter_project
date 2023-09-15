import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_project/application/pages/search/widgets/search_button.dart';
import 'package:flutter_project/application/widgets/atoms/cbi_text_field.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/templates/not_login_template.dart';
import 'search_vm.dart';


class SearchPage extends ConsumerStatefulWidget {
  static const path = '/';
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  final _vm = GetIt.I<SearchVm>();

  @override
  void initState() {
    super.initState();
    _vm.init(ref);
  }

  @override
  Widget build(BuildContext context) {
    return NotLoginTemplate(
        appTitle: AppLocalizations.of(context)!.search_page_title,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.search_in_github,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              CbiTextField(onChange: _vm.onKeywordChanged),
              SearchButton(vm: _vm),
              ElevatedButton(onPressed: (){
                context.go('/sample_page');
              },
              child: const Text('Sample'),
              )
            ],
          ),
        ));
  }
}
