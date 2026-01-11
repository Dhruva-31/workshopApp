// import 'package:flutter/material.dart';
// import 'package:workshop_app/data.dart';
// import 'package:workshop_app/detailsscreen.dart';

// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});

//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen> {
//   int? openIndex;

//   IconData getIconFromString(String name) {
//     switch (name) {
//       case "restaurant":
//         return Icons.restaurant;
//       case "menu_book":
//         return Icons.menu_book;
//       case "home":
//         return Icons.home;
//       case "groups":
//         return Icons.groups;
//       case "sports":
//         return Icons.sports;
//       default:
//         return Icons.place;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final data = campusData;
//     final categories = data['categories'] as List;
//     return Scaffold(
//       appBar: AppBar(title: Text('Campus Explorer')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView.builder(
//           itemCount: categories.length,
//           itemBuilder: (context, index) {
//             final title = categories[index]['title'].toString();
//             final iconString = categories[index]['icon'].toString();
//             final icon = getIconFromString(iconString);
//             final places =
//                 categories[index]['places'] as List<Map<dynamic, dynamic>>;

//             return Column(
//               children: [
//                 GestureDetector(
//                   child: Card(
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Icon(icon),
//                               SizedBox(width: 20),
//                               Text(title),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       if (openIndex == index) {
//                         openIndex = null;
//                       } else {
//                         openIndex = index;
//                       }
//                     });
//                   },
//                 ),
//                 (openIndex == index)
//                     ? Card(
//                         child: Container(
//                           height: 70,
//                           padding: EdgeInsets.all(10),
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: places.length,
//                             itemBuilder: (context, index) {
//                               final name = places[index]['name'];
//                               return GestureDetector(
//                                 child: Card(
//                                   child: Center(
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(10.0),
//                                       child: Text(name),
//                                     ),
//                                   ),
//                                 ),
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           Detailsscreen(place: places[index]),
//                                     ),
//                                   );
//                                 },
//                               );
//                             },
//                           ),
//                         ),
//                       )
//                     : SizedBox.shrink(),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
