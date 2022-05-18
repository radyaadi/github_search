import 'package:flutter/material.dart';
import 'package:github_search/Model/userModel.dart';
import 'package:github_search/Controller/request.dart';
import 'package:github_search/Component/userPageComponent.dart';

class UserPage extends StatefulWidget {
  final String username;
  const UserPage({Key? key, required this.username}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GitHub User", style: TextStyle(color: Colors.white)),
      ),
      body: _buildDetailUserBody(),
    );
  }

  Widget _buildDetailUserBody() {
    return Container(
      child: FutureBuilder(
        future:  UserDataSource.instance.loadUser(widget.username),
        builder: (BuildContext context,
          AsyncSnapshot<dynamic> snapshot,) {
          
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            UserModel userModel = UserModel.fromJson(snapshot.data);
            return _buildSuccessSection(userModel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }


  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(UserModel data) {
    return _userPage(
      '${data.login}', 
      '${data.avatarUrl}', 
      '${data.publicRepos}', 
      '${data.followers}',
      '${data.following}'
    );
  }

  Widget _userPage(String tempUserName, String tempProfile, String tempRepo, String tempFollower, String tempFollowing){
    if(tempUserName == "null"){
      return Center(child: Text('User Not Found'),);
    }
    else {
      return UserPageComponent(
        username: tempUserName,
        profile: tempProfile,
        repo: tempRepo,
        followers: tempFollower,
        following: tempFollowing
      );
    }
  }
}