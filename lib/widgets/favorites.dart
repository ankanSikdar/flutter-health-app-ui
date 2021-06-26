import 'package:flutter/material.dart';
import 'package:health_ui/widgets/header.dart';
import 'package:health_ui/widgets/favorite_card.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(text: 'Favorite Workouts'),
        Container(
          height: 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FavoriteCard(
                title: 'Intense Abs',
                imageUrl:
                    "https://images.unsplash.com/photo-1571731956672-f2b94d7dd0cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib",
              ),
              FavoriteCard(
                title: 'Weightlifting',
                imageUrl:
                    "https://images.unsplash.com/photo-1581009137042-c552e485697a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib",
              ),
              FavoriteCard(
                title: 'Cardio',
                imageUrl:
                    "https://images.unsplash.com/flagged/photo-1566064352554-f36ef0ef23b2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib",
              ),
              FavoriteCard(
                title: 'Curls',
                imageUrl:
                    "https://images.unsplash.com/photo-1532384555668-bc0c32a17ffd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8",
              ),
              FavoriteCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1554344728-77cf90d9ed26?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8',
                title: 'Deadlift',
              )
            ],
          ),
        )
      ],
    );
  }
}
