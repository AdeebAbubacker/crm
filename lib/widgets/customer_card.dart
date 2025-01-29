import 'dart:convert';

import 'package:crm_app/core/model/user_model.dart';
import 'package:crm_app/core/styles/text_styles.dart';
import 'package:crm_app/screens/mobile/customer_info_mob_screen.dart';
import 'package:flutter/material.dart';

class CustomerCard extends StatefulWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final double width;
  final UserModel userModel;
  const CustomerCard({
    super.key,
    required this.width,
    required this.userModel,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<CustomerCard> createState() => _CustomerCardState();
}

class _CustomerCardState extends State<CustomerCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.isSelected
              ? const Color(0XFFFFE54A)
              : const Color(0XFFF3F5EF),
        ),
        width: widget.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(widget.userModel.image),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      widget.userModel.name.contains(" ")
                          ? widget.userModel.name.replaceFirst(" ", "\n")
                          : widget.userModel.name,
                      style: const TextStyle(fontSize: 16),
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Text(
                  widget.userModel.position,
                  style: TextStyles.rubik12black22w400,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: widget.isSelected
                              ? const Color.fromARGB(255, 91, 91, 91)
                              : const Color.fromARGB(0, 238, 238, 231),
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: widget.isSelected
                            ? const Color(0XFFFFE54A)
                            : const Color(0XFFEEEEE7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$12,000",
                              style: TextStyles.rubik12black33w200,
                            ),
                            Text(
                              "Total in Pipeline",
                              style: TextStyles.rubik8black33w200,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      widget.onTap();
                      Future.delayed(
                        Duration(milliseconds: 50),
                        () {
                          return Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return CustomerInfoMobScreen(
                                  userModel: widget.userModel,
                                );
                              },
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin =
                                    Offset(1.0, 0.0); // Start from right
                                const end = Offset.zero; // End at the center
                                const curve = Curves.easeInOut; // Smooth curve

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                    position: offsetAnimation, child: child);
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: widget.isSelected
                            ? const Color.fromARGB(255, 18, 18, 18)
                            : const Color(0XFFEEEEE7),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Transform.rotate(
                            angle: -45 * 3.1415927 / 180,
                            child: Transform.scale(
                              scaleX: 0.6,
                              scaleY: 0.6,
                              child: Image.asset(
                                "assets/icons/back_arrow.png",
                                width: 25,
                                color: widget.isSelected
                                    ? const Color(0XFFEEEEE7)
                                    : const Color.fromARGB(255, 103, 103, 103),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
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
                    icon: const Icon(Icons.home, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.person, color: Colors.white),
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
//---