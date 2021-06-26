import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const FavoriteCard({
    Key key,
    @required this.imageUrl,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8.0, 4.0, 8.0),
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(12.0, 0, 0, 16.0),
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ]),
    );
  }
}
