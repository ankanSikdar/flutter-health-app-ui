import 'package:flutter/material.dart';
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
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/26273866?v=4"),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
