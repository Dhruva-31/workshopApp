// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Detailsscreen extends StatelessWidget {
  final Map<dynamic, dynamic> place;
  const Detailsscreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final String name = place['name'];
    final double rating = place['rating'];
    final String timing = place['timing'];
    final String desc = place['description'];
    final String location = place['location'];
    final List<String> tags = place['tags'];

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tags.length,
                      itemBuilder: (context, index) {
                        final tag = tags[index];
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(tag),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Card(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Center(child: Text(rating.toString())),
                      ),
                      Icon(Icons.star_outline, size: 18),
                    ],
                  ),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(children: [Text('Timings: '), Text(timing)]),
                    SizedBox(height: 10),
                    Text(desc),
                    SizedBox(height: 10),
                    Row(children: [Text('Location: '), Text(location)]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
