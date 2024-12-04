import 'package:food_social_app/models/post.dart';
import 'explore_recipes.dart';


class ExploreData{
  final List<ExploreRecipes> todayRecipes;
  final List<Post> friendPosts;

  ExploreData(
      this.friendPosts,
      this.todayRecipes);
}