import 'dart:convert';

import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0XFFF3F5EF),
      ),
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHRvqAGE6VUiv8X9_f3xjvPYUNLuEdRrne-A&s",
                  ),
                ),
                SizedBox(width: 10),
                Text("Maria\nGreen"),
              ],
            ),
            const Text("Chemical Machinery"),
            const Spacer(),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0XFFEEEEE7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("120000"),
                        Text(
                          "Total in Pipeline",
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0XFFEEEEE7),
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_forward_outlined),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width / 2, // Only 1/3rd width
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20), // Rounded edges
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.home, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.person, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
