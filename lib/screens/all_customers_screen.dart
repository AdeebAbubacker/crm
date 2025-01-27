import 'dart:math';

import 'package:crm_app/core/model/user_model.dart';
import 'package:crm_app/core/styles/text_styles.dart';
import 'package:crm_app/screens/customer_info_screen.dart';
import 'package:crm_app/widgets/customer_card.dart';
import 'package:crm_app/widgets/pill_widget.dart';
import 'package:flutter/material.dart';

class AllCustomersScreen extends StatefulWidget {
  const AllCustomersScreen({super.key});

  @override
  State<AllCustomersScreen> createState() => _AllCustomersScreenState();
}

class _AllCustomersScreenState extends State<AllCustomersScreen> {
  final List<UserModel> users = [
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'Maria',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'Sara',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Peter',
    ),
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'Maria',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'Sara',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Peter',
    ),
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'Maria',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'Sara',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Peter',
    ),
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'Maria',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'Sara',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Peter',
    ),
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'Maria',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'Sara',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Peter',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECEFEC),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Transform.rotate(
                                angle: pi,
                                child: Transform.scale(
                                  scaleX: 0.6,
                                  scaleY: 0.6,
                                  child: Image.asset(
                                    'assets/icons/back_arrow.png',
                                    color: Colors.black,
                                    width: 30,
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text("Your Customer",
                                  style: TextStyles.rubik18black22w100),
                              Text("Network",
                                  style: TextStyles.rubik18black22w100),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: SizedBox(
                            width: 35,
                            height: 34,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/icons/search.png",
                                width: 16,
                                height: 16,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),

                        // Container(
                        //   width: 50,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     color: Colors.white,
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: Image.asset(
                        //       "assets/icons/search.png",
                        //       width: 23,
                        //       height: 23,
                        //       fit: BoxFit.contain,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        PillWidget(text: 'All'),
                        SizedBox(
                          width: 10,
                        ),
                        PillWidget(text: 'Permanent'),
                        SizedBox(
                          width: 10,
                        ),
                        PillWidget(text: 'Hot'),
                        SizedBox(
                          width: 10,
                        ),
                        PillWidget(text: 'New'),
                      ],
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        double width = (constraints.maxWidth - 24) /
                            2; // Adjusting for padding
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: users.length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const CustomerInfoScreen();
                                      },
                                    ));
                                  },
                                  child: CustomerCard(
                                    width: width,
                                    name: users[index].name,
                                    image: users[index].image,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 120,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 80,
              right: 80,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                decoration: BoxDecoration(
                    color: const Color(0XFFE0E1D8),
                    borderRadius: BorderRadius.circular(29)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white, // White background
                        shape: BoxShape.circle, // Circular shape
                      ),
                      child: Material(
                        color: Colors
                            .transparent, // No background color for Material
                        shape:
                            const CircleBorder(), // Ensures proper ripple effect
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                              50), // Ripple effect stays circular
                          onTap: () {
                            // Your action here
                          },
                          child: Padding(
                            padding: EdgeInsets.all(
                                14), // Adjust padding for icon size
                            child: Image.asset(
                              "assets/icons/settings.png",
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white, // White background
                        shape: BoxShape.circle, // Circular shape
                      ),
                      child: Material(
                        color: Colors
                            .transparent, // No background color for Material
                        shape:
                            const CircleBorder(), // Ensures proper ripple effect
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                              50), // Ripple effect stays circular
                          onTap: () {
                            // Your action here
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(
                                14), // Adjust padding for icon size
                            child: Icon(
                              Icons.add,
                              color: Colors.black, // Icon color
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white, // White background
                        shape: BoxShape.circle, // Circular shape
                      ),
                      child: Material(
                        color: Colors
                            .transparent, // No background color for Material
                        shape:
                            const CircleBorder(), // Ensures proper ripple effect
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                              50), // Ripple effect stays circular
                          onTap: () {
                            // Your action here
                          },
                          child: Padding(
                            padding: EdgeInsets.all(
                                14), // Adjust padding for icon size
                            child: Image.asset(
                              "assets/icons/edit.png",
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
