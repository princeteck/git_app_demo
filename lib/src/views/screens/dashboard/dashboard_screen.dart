import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_app/src/constants/ui/app_icons_constants.dart';
import 'package:git_app/src/core/cubit/network/git_repo/git_repo_cubit.dart';
import 'package:git_app/src/core/di/app_init.dart';
import 'package:git_app/src/storage/singleton_storage.dart';
import 'package:git_app/src/views/widgets/drawer/menu_drawer.dart';
import 'package:uih/uih.dart';

import '../../../core/cubit/network/user/user_cubit.dart';
import '../repo/repo_commit/repo_commits_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const id = "DASHBOARD_SCREEN";

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with AutomaticKeepAliveClientMixin {
  final cubit = AppInit.getIt<GitRepoCubit>();
  final userCubit = AppInit.getIt<UserCubit>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late ScrollController _scrollCtr;
  bool sliverHeaderHide = false;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    cubit.fetchAllRepositories();
    _scrollCtr = ScrollController(initialScrollOffset: 0.0);
    _scrollCtr.addListener(() {
      if (_scrollCtr.position.pixels <= 200) {
        sliverHeaderHide = false;
      } else {
        sliverHeaderHide = true;
      }

      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _scrollCtr.dispose();
    super.dispose();
  }

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    var record = cubit.state.repositories[index];
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RepoCommitsScreen(
            repoName: record.name ?? "",
            userName: record.owner?.login ?? "",
          ),
        ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: context.brightness == Brightness.light
                  ? Colors.black87
                  : Colors.white,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedNetworkImage(
                      imageUrl: record.owner?.avatarUrl ?? "",
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    width: context.widthPx * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          record.name ?? "",
                          style: context.theme.textTheme.caption?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          record.description ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.theme.textTheme.caption?.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: context.widthPx * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        AppIcons.fork,
                        width: context.theme.textTheme.caption?.fontSize,
                        color: context.brightness == Brightness.light
                            ? Colors.black87
                            : Colors.white,
                      ),
                      Text(
                        record.forks.toString(),
                        style: context.theme.textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (record.license?.name != null) const SizedBox(height: 10),
            if (record.license?.name != null)
              Text(
                record.license?.name ?? "",
                textAlign: TextAlign.start,
                style: context.theme.textTheme.caption?.copyWith(
                  color: Colors.grey.shade500,
                  fontSize: 10,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<GitRepoCubit, GitRepoState>(
      bloc: cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: const Drawer(
            child: MenuDrawer(),
          ),
          body: Stack(
            children: [
              RefreshIndicator(
                onRefresh: () => cubit.fetchAllRepositories(),
                child: CustomScrollView(
                  controller: _scrollCtr,
                  scrollDirection: Axis.vertical,
                  slivers: [
                    SliverAppBar(
                      snap: false,
                      pinned: true,
                      floating: false,
                      backgroundColor: context.brightness == Brightness.light
                          ? const Color(0XFFFBAB7E)
                          : const Color(0XFF28313B),
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: const EdgeInsets.all(20),
                        title: (sliverHeaderHide == true)
                            ? Row(
                                children: [
                                  const SizedBox(width: 30),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(2),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          userCubit.state.profile.avatarUrl ??
                                              "",
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      width: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    userCubit.state.profile.login ?? " ",
                                    style: context.theme.textTheme.subtitle1
                                        ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          userCubit.state.profile.avatarUrl ??
                                              "",
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      width: context.widthPx * 0.1,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text(
                                        userCubit.state.profile.login ?? " ",
                                        style: context.theme.textTheme.subtitle1
                                            ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " . ${userCubit.state.profile.location}",
                                        style: context.theme.textTheme.subtitle1
                                            ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    userCubit.state.profile.bio ?? " ",
                                    style: context.theme.textTheme.caption
                                        ?.copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                        background: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: context.brightness == Brightness.light
                                  ? [
                                      const Color(0XFFFBAB7E),
                                      const Color(0XFFF7CE68)
                                    ]
                                  : [
                                      const Color(0XFF28313B),
                                      const Color(0XFF485461)
                                    ],
                            ),
                          ),
                        ),
                      ),
                      expandedHeight: 360,

                      leading: IconButton(
                        icon: const Icon(Icons.menu),
                        tooltip: 'Menu',
                        onPressed: () =>
                            _scaffoldKey.currentState?.openDrawer(),
                      ), //IconButton
                    ),
                    SliverAnimatedList(
                      key: UniqueKey(),
                      initialItemCount: state.repositories.length,
                      itemBuilder: _buildItem,
                    ),
                  ],
                ),
              ),
              if (state.repositories.isEmpty)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              Positioned(
                  top: 5,
                  right: 20,
                  child: SafeArea(
                      child: IconButton(
                    onPressed: () async {
                      await showDialog<String>(
                        builder: (context) => AlertDialog(
                          contentPadding: const EdgeInsets.all(16.0),
                          content: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  autofocus: true,
                                  decoration: const InputDecoration(
                                      labelText: 'Search By User Name',
                                      hintText: 'eg. freeCodeCamp'),
                                  onChanged: (val) {
                                    SingletonStorage().userName = val;
                                  },
                                ),
                              )
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                                child: const Text('CANCEL'),
                                onPressed: () {
                                  SingletonStorage().copyWith(
                                      isSearchProfile: false,
                                      userName: AppInit.getIt<UserCubit>()
                                          .state
                                          .profile
                                          .login);
                                  Navigator.pop(context);
                                }),
                            TextButton(
                                child: const Text('SEARCH'),
                                onPressed: () {
                                  SingletonStorage().isSearchProfile = true;
                                  cubit.fetchAllRepositories();
                                  Navigator.pop(context);
                                })
                          ],
                        ),
                        context: context,
                      );
                    },
                    icon: const Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ))),
            ],
          ),
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    this.onTap,
    this.selected = false,
    required this.animation,
    required this.item,
  }) : assert(item >= 0);

  final Animation<double> animation;
  final VoidCallback? onTap;
  final int item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
        top: 2.0,
      ),
      child: SizeTransition(
        sizeFactor: animation,
        child: GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: 80.0,
            child: Card(
              color: selected
                  ? Colors.black12
                  : Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Item $item',
                  style: context.theme.textTheme.headline4,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
