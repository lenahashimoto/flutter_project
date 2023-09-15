import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_project/model/repo.dart';

import '../../domains/infrastructures/search_list.dart';

class GithubSearchList implements SearchList {
  final client = GetIt.I<http.Client>();

  @override
  Future<List<Repo>> searchList(String keyword) async {
    /// 検索用のURLがStringとして認識されるのでUri.parseで変換
    final response = await http.get(Uri.parse('https://api.github.com/search/topics?q=' + keyword + '+is:featured'));
    if (response.statusCode == 200) {
      print(response.body);
      List<Repo> list = [];
      Map<String, dynamic> decoded = json.decode(response.body);
      for (var item in decoded['items']) {
        list.add(Repo.fromJson(item));
      }
      return list;
    } else {
      throw Exception('Fail to search');
    }
  }
}
