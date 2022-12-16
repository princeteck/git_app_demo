class SingletonStorage {
  static final SingletonStorage _obj = SingletonStorage._internal();

  factory SingletonStorage() => _obj;

  SingletonStorage._internal();

  bool? isOnline;
  String? userName;
  String? repoName;
  bool? isSearchProfile;

  void copyWith({
    bool? isOnline,
    String? userName,
    String? repoName,
    bool? isSearchProfile,
  }) {
    this.isOnline = isOnline ?? this.isOnline;
    this.userName = userName ?? this.userName;
    this.repoName = repoName ?? this.repoName;
    this.isSearchProfile = isSearchProfile ?? isSearchProfile;
  }
}
