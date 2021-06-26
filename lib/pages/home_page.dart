import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:health_ui/widgets/bottom_nav.dart';
import 'package:health_ui/widgets/categories.dart';
import 'package:health_ui/widgets/favorites.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                    "https://images.unsplash.com/photo-1506863530036-1efeddceb993?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8"),
              ),
            ),
            centerTitle: true,
            title: Text('Home'),
            actions: [
              IconButton(
                icon: Icon(
                  LineIcons.search,
                  size: 26.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.0, 20.0, 0, 0),
              child: Column(
                children: [
                  FavoriteWidget(),
                  SizedBox(height: 16.0),
                  CategoriesWidget(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
