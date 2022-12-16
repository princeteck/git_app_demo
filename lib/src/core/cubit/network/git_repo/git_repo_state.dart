part of 'git_repo_cubit.dart';

@immutable
class GitRepoState extends Equatable {
  const GitRepoState({
    required this.repositories,
    required this.cubitStatus,
    required this.commits,
  });
  final List<RepositoryModel> repositories;
  final List<CommitModel> commits;
  final Status cubitStatus;

  @override
  List<Object?> get props => [
        cubitStatus,
        repositories,
        commits,
      ];
  GitRepoState copyWith({
    List<RepositoryModel>? repositories,
    List<CommitModel>? commits,
    Status? cubitStatus,
  }) {
    return GitRepoState(
      repositories: repositories ?? this.repositories,
      cubitStatus: cubitStatus ?? this.cubitStatus,
      commits: commits ?? this.commits,
    );
  }
}
