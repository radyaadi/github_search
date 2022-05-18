import 'package:github_search/Controller/baseNetwork.dart';
import 'package:github_search/Model/repoModel.dart';
import 'package:github_search/Model/followersModel.dart';
import 'package:github_search/Model/followingModel.dart';

class UserDataSource {
  static UserDataSource instance = UserDataSource();

  //request for user detail
  Future<Map<String, dynamic>> loadUser(username) {
    return BaseNetwork.get("${username}");
  }

  //request for repository
  Future<List<RepoModel>> loadUsersRepo(username){
    return BaseNetwork.getRepos("${username}/repos");
  }

  //request for followers
  Future<List<FollowersModel>> loadUsersFollowers(username){
    return BaseNetwork.getFollowers("${username}/followers");
  }

  //request for following
  Future<List<FollowingModel>> loadUsersFollowing(username){
    return BaseNetwork.getFollowing("${username}/following");
  }
}