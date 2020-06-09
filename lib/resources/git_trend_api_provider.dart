

import 'package:dio/dio.dart';
import 'package:gitboard/models/repository_model.dart';

class GitTrendApiProvider {
  Dio dio = Dio();

  Future<List<RepositoryModel>> fetchTrendingRepositories() async {
    var url = 'https://ghapi.huchen.dev/repositories';
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      Iterable list = response.data;
      return list.map((json) => RepositoryModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load get');
    }
  }

  Future<List<RepositoryModel>> fetchTrendingLanguageRepositories(String language) async {
    var url = 'https://ghapi.huchen.dev/repositories';
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      Iterable list = response.data;
      return list.map((json) => RepositoryModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load get');
    }
  }
}