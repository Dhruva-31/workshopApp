import 'package:flutter/material.dart';
import 'package:workshop_app/data.dart';
import 'package:workshop_app/detailsScreenWithCons.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  IconData getIconFromString(String name) {
    switch (name) {
      case "restaurant":
        return Icons.restaurant;
      case "menu_book":
        return Icons.menu_book;
      case "home":
        return Icons.home;
      case "groups":
        return Icons.groups;
      case "sports":
        return Icons.sports;
      default:
        return Icons.place;
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = campusData;
    return Scaffold(
      appBar: AppBar(title: Text('Campus Explorer')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final title = data[index]['title'].toString();
            final iconString = data[index]['icon'].toString();
            final icon = getIconFromString(iconString);
            final places = data[index]['places'] as List<Map<dynamic, dynamic>>;

            return Card(
              child: ExpansionTile(
                collapsedIconColor: Colors.grey,
                iconColor: Colors.black,
                leading: Icon(icon),
                title: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [Text(title)]),
                ),
                children: [
                  Container(
                    height: 70,
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (context, index) {
                        final name = places[index]['name'];
                        return GestureDetector(
                          child: Card(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(name),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreenWithCons(place: places[index]),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
