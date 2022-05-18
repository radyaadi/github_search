class RepoModel {
  final int? id;
  final String? nodeId;
  final String? name;
  final String? fullName;
  final bool? private;
  final Owner? owner;
  final String? htmlUrl;
  final dynamic description;
  final bool? fork;
  final String? url;
  final String? forksUrl;
  final String? keysUrl;
  final String? collaboratorsUrl;
  final String? teamsUrl;
  final String? hooksUrl;
  final String? issueEventsUrl;
  final String? eventsUrl;
  final String? assigneesUrl;
  final String? branchesUrl;
  final String? tagsUrl;
  final String? blobsUrl;
  final String? gitTagsUrl;
  final String? gitRefsUrl;
  final String? treesUrl;
  final String? statusesUrl;
  final String? languagesUrl;
  final String? stargazersUrl;
  final String? contributorsUrl;
  final String? subscribersUrl;
  final String? subscriptionUrl;
  final String? commitsUrl;
  final String? gitCommitsUrl;
  final String? commentsUrl;
  final String? issueCommentUrl;
  final String? contentsUrl;
  final String? compareUrl;
  final String? mergesUrl;
  final String? archiveUrl;
  final String? downloadsUrl;
  final String? issuesUrl;
  final String? pullsUrl;
  final String? milestonesUrl;
  final String? notificationsUrl;
  final String? labelsUrl;
  final String? releasesUrl;
  final String? deploymentsUrl;
  final String? createdAt;
  final String? updatedAt;
  final String? pushedAt;
  final String? gitUrl;
  final String? sshUrl;
  final String? cloneUrl;
  final String? svnUrl;
  final dynamic homepage;
  final int? size;
  final int? stargazersCount;
  final int? watchersCount;
  final String? language;
  final bool? hasIssues;
  final bool? hasProjects;
  final bool? hasDownloads;
  final bool? hasWiki;
  final bool? hasPages;
  final int? forksCount;
  final dynamic mirrorUrl;
  final bool? archived;
  final bool? disabled;
  final int? openIssuesCount;
  final dynamic license;
  final bool? allowForking;
  final bool? isTemplate;
  final List<dynamic>? topics;
  final String? visibility;
  final int? forks;
  final int? openIssues;
  final int? watchers;
  final String? defaultBranch;

  RepoModel({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.allowForking,
    this.isTemplate,
    this.topics,
    this.visibility,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
  });

  RepoModel.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      nodeId = json['node_id'] as String?,
      name = json['name'] as String?,
      fullName = json['full_name'] as String?,
      private = json['private'] as bool?,
      owner = (json['owner'] as Map<String,dynamic>?) != null ? Owner.fromJson(json['owner'] as Map<String,dynamic>) : null,
      htmlUrl = json['html_url'] as String?,
      description = json['description'],
      fork = json['fork'] as bool?,
      url = json['url'] as String?,
      forksUrl = json['forks_url'] as String?,
      keysUrl = json['keys_url'] as String?,
      collaboratorsUrl = json['collaborators_url'] as String?,
      teamsUrl = json['teams_url'] as String?,
      hooksUrl = json['hooks_url'] as String?,
      issueEventsUrl = json['issue_events_url'] as String?,
      eventsUrl = json['events_url'] as String?,
      assigneesUrl = json['assignees_url'] as String?,
      branchesUrl = json['branches_url'] as String?,
      tagsUrl = json['tags_url'] as String?,
      blobsUrl = json['blobs_url'] as String?,
      gitTagsUrl = json['git_tags_url'] as String?,
      gitRefsUrl = json['git_refs_url'] as String?,
      treesUrl = json['trees_url'] as String?,
      statusesUrl = json['statuses_url'] as String?,
      languagesUrl = json['languages_url'] as String?,
      stargazersUrl = json['stargazers_url'] as String?,
      contributorsUrl = json['contributors_url'] as String?,
      subscribersUrl = json['subscribers_url'] as String?,
      subscriptionUrl = json['subscription_url'] as String?,
      commitsUrl = json['commits_url'] as String?,
      gitCommitsUrl = json['git_commits_url'] as String?,
      commentsUrl = json['comments_url'] as String?,
      issueCommentUrl = json['issue_comment_url'] as String?,
      contentsUrl = json['contents_url'] as String?,
      compareUrl = json['compare_url'] as String?,
      mergesUrl = json['merges_url'] as String?,
      archiveUrl = json['archive_url'] as String?,
      downloadsUrl = json['downloads_url'] as String?,
      issuesUrl = json['issues_url'] as String?,
      pullsUrl = json['pulls_url'] as String?,
      milestonesUrl = json['milestones_url'] as String?,
      notificationsUrl = json['notifications_url'] as String?,
      labelsUrl = json['labels_url'] as String?,
      releasesUrl = json['releases_url'] as String?,
      deploymentsUrl = json['deployments_url'] as String?,
      createdAt = json['created_at'] as String?,
      updatedAt = json['updated_at'] as String?,
      pushedAt = json['pushed_at'] as String?,
      gitUrl = json['git_url'] as String?,
      sshUrl = json['ssh_url'] as String?,
      cloneUrl = json['clone_url'] as String?,
      svnUrl = json['svn_url'] as String?,
      homepage = json['homepage'],
      size = json['size'] as int?,
      stargazersCount = json['stargazers_count'] as int?,
      watchersCount = json['watchers_count'] as int?,
      language = json['language'] as String?,
      hasIssues = json['has_issues'] as bool?,
      hasProjects = json['has_projects'] as bool?,
      hasDownloads = json['has_downloads'] as bool?,
      hasWiki = json['has_wiki'] as bool?,
      hasPages = json['has_pages'] as bool?,
      forksCount = json['forks_count'] as int?,
      mirrorUrl = json['mirror_url'],
      archived = json['archived'] as bool?,
      disabled = json['disabled'] as bool?,
      openIssuesCount = json['open_issues_count'] as int?,
      license = json['license'],
      allowForking = json['allow_forking'] as bool?,
      isTemplate = json['is_template'] as bool?,
      topics = json['topics'] as List?,
      visibility = json['visibility'] as String?,
      forks = json['forks'] as int?,
      openIssues = json['open_issues'] as int?,
      watchers = json['watchers'] as int?,
      defaultBranch = json['default_branch'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'node_id' : nodeId,
    'name' : name,
    'full_name' : fullName,
    'private' : private,
    'owner' : owner?.toJson(),
    'html_url' : htmlUrl,
    'description' : description,
    'fork' : fork,
    'url' : url,
    'forks_url' : forksUrl,
    'keys_url' : keysUrl,
    'collaborators_url' : collaboratorsUrl,
    'teams_url' : teamsUrl,
    'hooks_url' : hooksUrl,
    'issue_events_url' : issueEventsUrl,
    'events_url' : eventsUrl,
    'assignees_url' : assigneesUrl,
    'branches_url' : branchesUrl,
    'tags_url' : tagsUrl,
    'blobs_url' : blobsUrl,
    'git_tags_url' : gitTagsUrl,
    'git_refs_url' : gitRefsUrl,
    'trees_url' : treesUrl,
    'statuses_url' : statusesUrl,
    'languages_url' : languagesUrl,
    'stargazers_url' : stargazersUrl,
    'contributors_url' : contributorsUrl,
    'subscribers_url' : subscribersUrl,
    'subscription_url' : subscriptionUrl,
    'commits_url' : commitsUrl,
    'git_commits_url' : gitCommitsUrl,
    'comments_url' : commentsUrl,
    'issue_comment_url' : issueCommentUrl,
    'contents_url' : contentsUrl,
    'compare_url' : compareUrl,
    'merges_url' : mergesUrl,
    'archive_url' : archiveUrl,
    'downloads_url' : downloadsUrl,
    'issues_url' : issuesUrl,
    'pulls_url' : pullsUrl,
    'milestones_url' : milestonesUrl,
    'notifications_url' : notificationsUrl,
    'labels_url' : labelsUrl,
    'releases_url' : releasesUrl,
    'deployments_url' : deploymentsUrl,
    'created_at' : createdAt,
    'updated_at' : updatedAt,
    'pushed_at' : pushedAt,
    'git_url' : gitUrl,
    'ssh_url' : sshUrl,
    'clone_url' : cloneUrl,
    'svn_url' : svnUrl,
    'homepage' : homepage,
    'size' : size,
    'stargazers_count' : stargazersCount,
    'watchers_count' : watchersCount,
    'language' : language,
    'has_issues' : hasIssues,
    'has_projects' : hasProjects,
    'has_downloads' : hasDownloads,
    'has_wiki' : hasWiki,
    'has_pages' : hasPages,
    'forks_count' : forksCount,
    'mirror_url' : mirrorUrl,
    'archived' : archived,
    'disabled' : disabled,
    'open_issues_count' : openIssuesCount,
    'license' : license,
    'allow_forking' : allowForking,
    'is_template' : isTemplate,
    'topics' : topics,
    'visibility' : visibility,
    'forks' : forks,
    'open_issues' : openIssues,
    'watchers' : watchers,
    'default_branch' : defaultBranch
  };
}

class Owner {
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

  Owner({
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
  });

  Owner.fromJson(Map<String, dynamic> json)
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
      siteAdmin = json['site_admin'] as bool?;

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
    'site_admin' : siteAdmin
  };
}