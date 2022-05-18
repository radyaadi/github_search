import 'package:flutter/material.dart';
import 'package:github_search/Model/followingModel.dart';
import 'package:github_search/Controller/request.dart';
import 'package:github_search/Component/userPageComponent.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowingPage extends StatefulWidget {
  final String username;
  const FollowingPage({Key? key, required this.username}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Following Page", style: TextStyle(color: Colors.white)),
      ),
      body: _buildDetailRepoBody(),
    );
  }

  Widget _buildDetailRepoBody() {
    return FutureBuilder<List<FollowingModel>>(
      future: UserDataSource.instance.loadUsersFollowing(widget.username),
      builder: (context, snapshot) {
        if(snapshot.hasError) {
          return _buildErrorSection();
        }
        if(snapshot.hasData) {
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

  Widget _buildSuccessSection(AsyncSnapshot<List<FollowingModel>> snapshot) {
    if(snapshot.data!.isNotEmpty){
      return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (BuildContext context, int index) {
          return _followingPage("${snapshot.data![index].login}", "${snapshot.data![index].htmlUrl}", "${snapshot.data![index].avatarUrl}");
        },

      );
    }
    else return Center(child: Text("User hasn't been following someone"));
  }

  Widget _followingPage(String tempName, String tempUrl, String tempImg){
   
      return InkWell(
        onTap: (){
          _launchURL(tempUrl);
        },
        child: Card(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
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