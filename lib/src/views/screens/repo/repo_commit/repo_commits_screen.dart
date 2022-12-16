import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_app/src/constants/ui/color_constants.dart';
import 'package:git_app/src/core/cubit/network/git_repo/git_repo_cubit.dart';
import 'package:git_app/src/core/di/app_init.dart';
import 'package:intl/intl.dart';
import 'package:uih/uih.dart';

class RepoCommitsScreen extends StatefulWidget {
  const RepoCommitsScreen({
    Key? key,
    required this.userName,
    required this.repoName,
  }) : super(key: key);
  static const id = "REPO_COMMITS_SCREEN";
  final String userName, repoName;

  @override
  State<RepoCommitsScreen> createState() => _RepoCommitsScreenState();
}

class _RepoCommitsScreenState extends State<RepoCommitsScreen> {
  final _cubit = AppInit.getIt<GitRepoCubit>();

  @override
  void initState() {
    _cubit.fetchAllCommits(
        repoName: widget.repoName, userName: widget.userName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GitRepoCubit, GitRepoState>(
      bloc: _cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: context.theme.iconTheme,
            backgroundColor: context.backgroundColor,
            title: Text(
              '${widget.repoName} Commit\'s',
              style: context.theme.textTheme.bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
          ),
          body: state.commits.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: state.commits.length,
                  itemBuilder: (context, index) {
                    var record = state.commits[index];
                    return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    record.commit?.message ?? "",
                                    style: context.theme.textTheme.subtitle1
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  record.commit?.verification?.verified ?? false
                                      ? 'verified'
                                      : "unverified",
                                  style: context.theme.textTheme.caption
                                      ?.copyWith(
                                          color: record.commit?.verification
                                                      ?.verified ??
                                                  false
                                              ? AppColors().green400
                                              : AppColors().yellow400),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Author: ${record.commit?.author?.name}',
                                    style: context.theme.textTheme.caption
                                        ?.copyWith(fontSize: 10)),
                                Text(
                                    'date: ${DateFormat('MM/dd/yyyy hh:mm a').format(DateTime.parse(record.commit?.author?.date ?? ""))}',
                                    style: context.theme.textTheme.caption
                                        ?.copyWith(fontSize: 10)),
                              ],
                            )
                          ],
                        ));
                  },
                ),
        );
      },
    );
  }
}
