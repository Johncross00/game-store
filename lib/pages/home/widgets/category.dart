import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:game_store/pages/home/widgets/newest.dart';
import 'package:game_store/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {

  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182f2),
      'title': 'More'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 750,
        decoration: BoxDecoration(
            color: Color(0xFFF6F8FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 140,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                  itemBuilder: ( (context, index) => Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          color: categories[index]['color'] as Color),
                          child: Icon(categories[index]['icon'] as IconData, color: Colors.white, size: 40,)
                      ),
                      Text(categories[index]['title'] as String, style: TextStyle(color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold, fontSize: 16),)
                    ],
                  )
                  ),
                  separatorBuilder: ((context, index) => SizedBox(width: 33,)),
                  itemCount: categories.length
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Popular Game", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
              ),
            ),
            PopularGame(),
      
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Newest Game", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
              ),
            ),
            Container(
                child: Expanded(child: NewestGame())),
      
          ],
        ),
      ),
    );
  }
}
