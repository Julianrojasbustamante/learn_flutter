import 'dart:math';

import 'package:fl_commponents/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {

  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if(isLoading) return;
    setState((){isLoading = true;});
    await Future.delayed(const Duration(seconds: 3));
    addMoreImages();
    setState((){isLoading = false;});
  }

  void addMoreImages() {
    final newImages = [1,2,3,4,5].map((e) => imagesIds.length + e);
    imagesIds.addAll(newImages);
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    final rand = Random().nextInt(80);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text('InfiniteScroll && Pull to refresh'),
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage('https://picsum.photos/id/${imagesIds[index] + rand}/500/300')
                );
              }
            ),
            Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: const _LoadingIcon()
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: CircularProgressIndicator(color: AppTheme.primary,),
    );
  }
}
