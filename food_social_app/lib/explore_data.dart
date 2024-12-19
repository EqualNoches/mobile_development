import 'package:food_social_app/models/explore_recipes.dart';
import 'package:food_social_app/models/post.dart';

class ExploreData {
  final List<ExploreRecipe> todayRecipes;
  final List<Post> friendPosts;

  ExploreData(
    this.todayRecipes,
    this.friendPosts,
  );
}
