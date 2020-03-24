import 'package:flutter/material.dart';
import 'package:mobility_services_app/models/activity_model.dart';
import 'package:mobility_services_app/screens/carpenter_list.dart';
import 'package:mobility_services_app/models/carpenter.dart';
import 'package:mobility_services_app/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobility_services_app/screens/carpenter_tile.dart';
import 'package:mobility_services_app/services/database.dart';
import 'package:provider/provider.dart';
import 'package:mobility_services_app/services/auth.dart';

//class DestinationScreen extends StatefulWidget {
//  final Destination destination;
//
//  DestinationScreen({this.destination});
//
//  @override
//  _DestinationScreenState createState() => _DestinationScreenState();
//}
//
//class _DestinationScreenState extends State<DestinationScreen> {
//  Text _buildRatingStars(int rating) {
//    String stars = '';
//    for (int i = 0; i < rating; i++) {
//      stars += '⭐ ';
//    }
//    stars.trim();
//    return Text(stars);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}

class CarpenterService extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Carpenter>>.value(
      value: DatabaseService().carpenters,
      child: Scaffold(
        body: CarpenterList(),
      ),
    );
  }
}
