import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  changeDestination(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      NavigationRail(
          useIndicator: true,
          elevation: 5,
          minWidth: 75,
          selectedIndex: _selectedIndex,
          onDestinationSelected: changeDestination,
          destinations: [
            NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text("Home")),
            NavigationRailDestination(
                icon: Icon(Icons.insert_chart_outlined_outlined),
                selectedIcon: Icon(Icons.insert_chart),
                label: Text("Progresso Continuado")),
            NavigationRailDestination(
                icon: Icon(Icons.table_chart_outlined),
                selectedIcon: Icon(Icons.table_chart),
                label: Text("Registro dos Estudantes"))
          ]),
      Container(
          color: Colors.white,
          child: Column(children: [
            Text("1"),
            Text("2"),
            Text("3"),
            Text("4"),
            Text("5"),
          ]))
    ]);
  }
}
