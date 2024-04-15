import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseURL =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> toons = [];

    final url = Uri.parse('$baseURL/$today');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(res.body);
      for (var webtoon in webtoons) {
        toons.add(WebtoonModel.fromJson(webtoon));
      }
      return toons;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse('$baseURL/$id');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final webtoon = jsonDecode(res.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodesById(
      String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];

    final url = Uri.parse('$baseURL/$id/episodes');
    final res = await http.get(url);
    if (res.statusCode == 200) {
      final episodes = jsonDecode(res.body);
      for (var episode in episodes) {
        episodesInstances.add(WebtoonEpisodeModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}
