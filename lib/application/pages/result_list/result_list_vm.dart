import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project/model/repo.dart';

abstract interface class ResultListVm {
  List<Repo> get result;
  String get keyword;

  void init(WidgetRef ref);

  void onKeywordChanged(String value);
  Future<List<Repo>> searchResult(String value);
}
