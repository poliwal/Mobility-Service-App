import 'package:mobility_services_app/models/carpenter.dart';
import 'package:flutter/material.dart';
import 'package:mobility_services_app/screens/carpenter_tile.dart';
import 'package:provider/provider.dart';

class CarpenterList extends StatefulWidget {
  @override
  _CarpenterListState createState() => _CarpenterListState();
}

class _CarpenterListState extends State<CarpenterList> {
  @override
  Widget build(BuildContext context) {
    final carpenters = Provider.of<List<Carpenter>>(context) ?? [];

    return ListView.builder(
      itemCount: carpenters.length,
      itemBuilder: (context, index) {
        return CarpenterTile(carpenter: carpenters[index], n: index);
      },
    );
  }
}
