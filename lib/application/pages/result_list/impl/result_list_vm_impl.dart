import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_project/domains/infrastructures/search_list.dart';
import '../result_list_vm.dart';
import 'package:flutter_project/model/repo.dart';

part 'result_list_vm_impl.gvm.dart';

class ResultListVmImpl with _$ResultListVmImpl implements ResultListVm {
  @override
  void init(WidgetRef ref) {
    _init(ref);
  }

  @override
  Future<List<Repo>> searchResult(String keyword) {
    final searchResult = GetIt.I<SearchList>();
    return searchResult.searchList(keyword);
  }

  @override
  void onKeywordChanged(String value) {
    _keyword(value);
  }
}
