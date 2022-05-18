import 'package:flutter/material.dart';
import 'package:github_search/Model/repoModel.dart';
import 'package:github_search/Controller/request.dart';
import 'package:github_search/Component/userPageComponent.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoPage extends StatefulWidget {
  final String username;
  const RepoPage({Key? key, required this.username}) : super(key: key);

  @override
  _RepoPageState createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {

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
    return FutureBuilder<List<RepoModel>>(
        future: UserDataSource.instance.loadUsersRepo(widget.username),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            // return Card();
            return _buildSuccessSection(snapshot);
          }
          return _buildLoadingSection();
        });
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(AsyncSnapshot<List<RepoModel>> snapshot) {
    return ListView.builder(
      itemCount: snapshot.data!.length,
      itemBuilder: (BuildContext context, int index) {
        return _repoPage("${snapshot.data![index].name}", "${snapshot.data![index].htmlUrl}");
      },
    );
  }

  Widget _repoPage(String tempName, String tempUrl){
    if(tempName == "null"){
      return Center(child: Text('User Not Found'),);
    }
    else {
      return InkWell(
        onTap: (){
          _launchURL(tempUrl);
        },
        child: Card(
          child: Row(
            children:<Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.bookmarks_rounded),
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      tempName,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ]
                )
              )
            ]
          )
        )
      );
    }
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}