import '../infrastructures/github_api/github_search_list.dart';
import 'package:flutter_project/model/repo.dart';

class ResultList {
  Future<List<Repo>> searchResult(String keyword) {
    final searchList = GithubSearchList();
    return searchList.searchList(keyword);
  }
}
