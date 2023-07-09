import 'package:flutter/material.dart';
import 'package:nba_stats_api/models/team.dart';

class TeamPage extends StatelessWidget {
  final Team team;
  const TeamPage({
    required this.team,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NBA Team'),
        elevation: 3,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            title: Text(team.abbreviation),
            subtitle: Text(team.city),
          ),
        ),
      ),
    );
  }
}
