import 'package:flutter/material.dart';
import 'package:game_store/pages/home/widgets/category.dart';
import 'package:game_store/pages/home/widgets/header.dart';
import 'package:game_store/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5f67EA),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(1),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
                right: 0,
                top: 200,
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: Offset(180, 100),
                  child: Image.asset(
                    'assets/images/bg_liquid.png',
                    width: 200,
                  ),
                )),
            Container(
              padding: EdgeInsets.all(1),
              child: Column(
                children: [
                  HeaderSection(),
                  SearchSection(),
                  CategorySection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
        color: Color(0xfff6f8fff),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10)
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: BottomNavigationBar(
              selectedItemColor: Color(0xFF5F67EA),
              unselectedItemColor: Colors.grey.withOpacity(0.7),
              selectedFontSize: 16,
              unselectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.home_rounded,
                      size: 40,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Application',
                  icon: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.more_horiz_rounded,
                      size: 40,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Film',
                  icon: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 40,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Book',
                  icon: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.auto_stories_rounded,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
