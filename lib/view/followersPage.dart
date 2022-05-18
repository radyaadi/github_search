import 'package:flutter/material.dart';
import 'package:github_search/Model/followersModel.dart';
import 'package:github_search/Controller/request.dart';
import 'package:github_search/Component/userPageComponent.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowersPage extends StatefulWidget {
  final String username;
  const FollowersPage({Key? key, required this.username}) : super(key: key);

  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GitHub User", style: TextStyle(color: Colors.white)),
      ),
      body: _buildDetailRepoBody(),
    );
  }

  Widget _buildDetailRepoBody() {
    return FutureBuilder<List<FollowersModel>>(
      future: UserDataSource.instance.loadUsersFollowers(widget.username),
      builder: (context, snapshot) {
        if(snapshot.hasError) {
          return _buildErrorSection();
        }
        if(snapshot.hasData) {
            // return Card();
          return _buildSuccessSection(snapshot);
        }
        return _buildLoadingSection();
      }
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

  Widget _buildSuccessSection(AsyncSnapshot<List<FollowersModel>> snapshot) {
    if(snapshot.data!.isNotEmpty){
      return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (BuildContext context, int index) {
          return _followersPage("${snapshot.data![index].login}", "${snapshot.data![index].htmlUrl}", "${snapshot.data![index].avatarUrl}");
        },
      );
    }
    else return Center(child: Text("User don't have follower"));
  }

  Widget _followersPage(String tempName, String tempUrl, String tempImg){
   
      return InkWell(
        onTap: (){
          _launchURL(tempUrl);
        },
        child: Card(
          child: Row(
            children:<Widget>[
              Container(
                width: 50,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child:CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(tempImg),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      tempName,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ]
                )
              )
            ]
          )
        )
      );
    
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}