import 'package:flutter/material.dart';

class Donated extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double amount;
  final double donation;
  final double messages;

  Doanted(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.category,
      required this.amount,
      required this.donation,
      required this.messages});

  @override
  _DonatedState createState() => _DonatedState();
}

class _DoantedState extends State<Donated> {
  var cardText = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 230.0,
            width: 340.0,
            child: Image(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            width: 340.0,
            height: 60.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.black12],
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "(" + widget.ratings.toString() + " Video)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      widget.amount.toString(),
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent),
                    ),
                    Text("Donation", style: TextStyle(color: Colors.grey))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
