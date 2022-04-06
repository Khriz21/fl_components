// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    scrollController.addListener(
      () {
        if ((scrollController.position.pixels + 500) >=
            scrollController.position.maxScrollExtent) {
          fetchData();
        }
      },
    );
    super.initState();
  }

  void add5() {
    final lastId = imagesId.last;
    setState(() {
      imagesId.addAll(
        [1, 2, 3, 4, 5].map((e) => lastId + e),
      );
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));

    //
    setState(() {
      add5();
      isLoading = false;
    });

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(microseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesId.last;
    imagesId.clear();
    imagesId.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: <Widget>[
              RefreshIndicator(
                onRefresh: onRefresh,
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: imagesId.length,
                  itemBuilder: ((context, index) {
                    return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder:
                          const AssetImage('assets/images/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image =${imagesId[index]}'),
                    );
                  }),
                ),
              ),
              if (isLoading)
                Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 30,
                  child: const _loadingIcon(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _loadingIcon extends StatelessWidget {
  const _loadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: CircularProgressIndicator(
          color: AppTheme.primary,
        ),
      ),
    );
  }
}
