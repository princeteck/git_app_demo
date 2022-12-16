mixin Api {
  static const baseUrl = 'https://api.github.com/';
  static const user = 'user';
  static const otherUser = 'user/{userName}';
  static const getRepositories = 'users/{userName}/repos';
  static const getAllCommits = 'repos/{userName}/{repoName}/commits';
}
