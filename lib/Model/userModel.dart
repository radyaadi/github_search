class UserModel {
  final String? login;
  final int? id;
  final String? nodeId;
  final String? avatarUrl;
  final String? gravatarId;
  final String? url;
  final String? htmlUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? organizationsUrl;
  final String? reposUrl;
  final String? eventsUrl;
  final String? receivedEventsUrl;
  final String? type;
  final bool? siteAdmin;
  final dynamic name;
  final dynamic company;
  final String? blog;
  final dynamic location;
  final dynamic email;
  final dynamic hireable;
  final dynamic bio;
  final dynamic twitterUsername;
  final int? publicRepos;
  final int? publicGists;
  final int? followers;
  final int? following;
  final String? createdAt;
  final String? updatedAt;

  UserModel({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.twitterUsername,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
  });

  UserModel.fromJson(Map<String, dynamic> json)
    : login = json['login'] as String?,
      id = json['id'] as int?,
      nodeId = json['node_id'] as String?,
      avatarUrl = json['avatar_url'] as String?,
      gravatarId = json['gravatar_id'] as String?,
      url = json['url'] as String?,
      htmlUrl = json['html_url'] as String?,
      followersUrl = json['followers_url'] as String?,
      followingUrl = json['following_url'] as String?,
      gistsUrl = json['gists_url'] as String?,
      starredUrl = json['starred_url'] as String?,
      subscriptionsUrl = json['subscriptions_url'] as String?,
      organizationsUrl = json['organizations_url'] as String?,
      reposUrl = json['repos_url'] as String?,
      eventsUrl = json['events_url'] as String?,
      receivedEventsUrl = json['received_events_url'] as String?,
      type = json['type'] as String?,
      siteAdmin = json['site_admin'] as bool?,
      name = json['name'],
      company = json['company'],
      blog = json['blog'] as String?,
      location = json['location'],
      email = json['email'],
      hireable = json['hireable'],
      bio = json['bio'],
      twitterUsername = json['twitter_username'],
      publicRepos = json['public_repos'] as int?,
      publicGists = json['public_gists'] as int?,
      followers = json['followers'] as int?,
      following = json['following'] as int?,
      createdAt = json['created_at'] as String?,
      updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
    'login' : login,
    'id' : id,
    'node_id' : nodeId,
    'avatar_url' : avatarUrl,
    'gravatar_id' : gravatarId,
    'url' : url,
    'html_url' : htmlUrl,
    'followers_url' : followersUrl,
    'following_url' : followingUrl,
    'gists_url' : gistsUrl,
    'starred_url' : starredUrl,
    'subscriptions_url' : subscriptionsUrl,
    'organizations_url' : organizationsUrl,
    'repos_url' : reposUrl,
    'events_url' : eventsUrl,
    'received_events_url' : receivedEventsUrl,
    'type' : type,
    'site_admin' : siteAdmin,
    'name' : name,
    'company' : company,
    'blog' : blog,
    'location' : location,
    'email' : email,
    'hireable' : hireable,
    'bio' : bio,
    'twitter_username' : twitterUsername,
    'public_repos' : publicRepos,
    'public_gists' : publicGists,
    'followers' : followers,
    'following' : following,
    'created_at' : createdAt,
    'updated_at' : updatedAt
  };
}