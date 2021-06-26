import 'package:flutter/material.dart';
import 'package:health_ui/widgets/favorite_card.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Favorite Workouts',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FavoriteCard(
                title: 'Intense Abs',
                imageUrl:
                    "https://images.unsplash.com/photo-1571019613576-2b22c76fd955?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8",
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
            ],
          ),
        )
      ],
    );
  }
}
