import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
                prefixIcon: Icon(Icons.search_outlined, size: 30, color: Colors.grey.withOpacity(0.9),),
            hintText: 'Search Game', hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.grey.withOpacity(0.7)
            )),
          ),
          Positioned(
              right: 12,
              bottom: 10,
              child: Container(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF5F67EA)),
                  child:
                      Icon(Icons.mic_outlined, color: Colors.white, size: 25),
                ),
              ))
        ],
      ),
    );
  }
}
