import 'package:flutter_project/model/repo.dart';

abstract interface class SearchList {
  Future<List<Repo>> searchList(String keyword);
}
