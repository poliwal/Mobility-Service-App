import 'package:flutter/material.dart';
import 'package:mobility_services_app/screens/service.dart';
import 'package:mobility_services_app/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCard extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconCard({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                icon: FaIcon(
                  iconData,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarpenterService()),
                  );
                },
              )),
          Text(
            text,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
