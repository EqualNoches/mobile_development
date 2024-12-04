import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_social_app/models/explore_data.dart';
import 'package:food_social_app/models/post.dart';

import '../models/explore_recipes.dart';
import '../models/simple_recipes.dart';

class ApiService {
  Future<String> _loadAssets(String path) async {
    return rootBundle.loadString(path);
  }

  Future<List<SimpleRecipes>> getRecipes() async {
    await Future.delayed(Duration(milliseconds: 1000));

    final data = await _loadAssets('assets/sample_data/simple_recipes.json');

    final Map<String, dynamic> json = jsonDecode(data);

    if (json['recipes'] != null) {
      final recipes = <SimpleRecipes>[];
      json['recipes'].forEach((value) {
        recipes.add(SimpleRecipes.fromJson(value));
      });
      return recipes;
    } else {
      return [];
    }
  }

  Future<List<Post>> _getFriendPosts() async {
    await Future.delayed(Duration(milliseconds: 1000));

    await Future.delayed(Duration(milliseconds: 1000));

    final data =
        await _loadAssets('assets/sample_data/sample_friends_feed.json');
    final Map<String, dynamic> json = jsonDecode(data);
    final List<Post> Posts = [];

    if (json['feed'] != null) {
      json['feed'].forEach((element) {
        Posts.add(Post.fromJson(element));
      });

      return Posts;
    }

    return [];
  }

  Future<List<ExploreRecipes>> _getTodayRecipes() async {
    await Future.delayed(Duration(milliseconds: 1000));

    final data =
        await _loadAssets('assets/sample_data/sample_friends_feed.json');
    final Map<String, dynamic> json = jsonDecode(data);
    if (json['recipes'] != null) {
      final recipes = <ExploreRecipes>[];
      json['recipes'].forEach((element) {
        recipes.add((ExploreRecipes.fromJson(element)));
      });

      return recipes;
    }

    return [];
  }

  Future<ExploreData> _getExploreData() async {
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendPosts();

    return ExploreData(friendPosts, todayRecipes);
  }
}
