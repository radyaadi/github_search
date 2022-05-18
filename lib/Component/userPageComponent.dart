import 'package:flutter/material.dart';
import 'package:github_search/view/homePage.dart';
import 'package:github_search/view/repoPage.dart';
import 'package:github_search/view/followersPage.dart';
import 'package:github_search/view/followingPage.dart';

class UserPageComponent extends StatelessWidget {
  String username;
  String profile;
  String repo;
  String followers;
  String following;
  
  UserPageComponent({
    required this.username,
    required this.profile,
    required this.repo,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25),
            Container(
              width: 150,
              height: 150,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(profile),
              ),
            ),
            SizedBox(height: 25),
            Text(username, style: 
              TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RepoPage(username: username);
                    }));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 8),
                      child: Column(
                        children: [
                          Text("Repository", style: 
                            TextStyle(
                              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
                            )
                          ),
                          SizedBox(height: 10),
                          Text(repo, style: 
                            TextStyle(
                              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                            )
                          ),
                        ]
                      )
                    )
                  )
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FollowersPage(username: username);
                    }));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 8),
                      child: Column(
                        children: [
                          Text("Followers", style: 
                            TextStyle(
                              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
                            )
                          ),
                          SizedBox(height: 10),
                          Text(followers, style: 
                            TextStyle(
                              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                            )
                          ),
                        ]
                      )
                    )
                  )
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FollowingPage(username: username);
                    }));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 8),
                      child: Column(
                        children: [
                          Text("Following", style: 
                            TextStyle(
                              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
                            )
                          ),
                          SizedBox(height: 10),
                          Text(following, style: 
                            TextStyle(
                              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold
                            )
                          ),
                        ]
                      )
                    )
                  )
                ),
              ],
            )
          ]
        ),
      )
    );
  }
}