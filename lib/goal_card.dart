import 'package:flutter/material.dart';
import 'config.dart';

class GoalCard extends StatefulWidget {
  final String upperTitle;
  final String mainTitle;
  final IconData icon;

  const GoalCard({
    Key key,
    @required this.upperTitle,
    @required this.mainTitle,
    @required this.icon,
  }) : super(key: key);

  @override
  _GoalCardState createState() => _GoalCardState();
}

class _GoalCardState extends State<GoalCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          // color: isSelected ? Colors.blue : Colors.grey.shade200,
          gradient: isSelected
              ? LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [startBlue, endBlue],
                )
              : LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.white, Colors.white54],
                ),
          borderRadius: BorderRadius.circular(10),
          border: isSelected
              ? Border.all(width: 0)
              : Border.all(
                  width: 3,
                  color: startBlue,
                ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 0, 0, 4.0),
                  child: Text(
                    widget.upperTitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white70 : Colors.black54,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    widget.mainTitle,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                widget.icon,
                size: 42,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
