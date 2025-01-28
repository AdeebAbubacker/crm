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
  final List<String> pills = ["All", "Permanent", "Hot", "New"];
  int selectedIndex = 0;
  int cardselectedIndex = -1;
  final List<UserModel> users = [
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'Maria Peter',
      text: 'Chemical Machinery',
      position: 'CEO, Alabama Machinery',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'Sara Peter',
      text: 'Tech Solutions, Inc',
      position: 'Founder, Tech Solutions',
    ),
    UserModel(
      image: 'assets/avatar/person3.jpg',
      name: 'Margret Teresa',
      text: 'Alabama Machinery',
      position: 'Managing Director',
    ),
    UserModel(
      image: 'assets/avatar/person4.jpg',
      name: 'Daniel Chacko',
      text: 'Creative Design Studio',
      position: 'Lead Designer',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Peter Parkers',
      text: 'Web Development',
      position: 'Full Stack Developer',
    ),
    UserModel(
      image: 'assets/avatar/person6.jpg',
      name: 'Nickolos Jackson',
      text: 'Data Analyst',
      position: 'Senior Data Analyst',
    ),
    UserModel(
      image: 'assets/avatar/person7.jpg',
      name: 'Alexander Suorov',
      text: 'Product Manager',
      position: 'Product Lead',
    ),
    UserModel(
      image: 'assets/avatar/person8.jpg',
      name: 'Albert Nico',
      text: 'Marketing Strategist',
      position: 'Marketing Head',
    ),
    UserModel(
      image: 'assets/avatar/person8.jpg',
      name: 'Maria Peter',
      text: 'Software Engineer',
      position: 'Lead Engineer',
    ),
    UserModel(
      image: 'assets/avatar/person10.jpg',
      name: 'Sara Peter',
      text: 'Cloud Architect',
      position: 'Cloud Solutions Architect',
    ),
    UserModel(
      image: 'assets/avatar/person11.jpg',
      name: 'Margret Teresa',
      text: 'Business Consultant',
      position: 'Senior Consultant',
    ),
    UserModel(
      image: 'assets/avatar/person12.jpg',
      name: 'Daniel Chacko',
      text: 'UX/UI Designer',
      position: 'UX/UI Lead',
    ),
    UserModel(
      image: 'assets/avatar/person13.jpg',
      name: 'Peter Parkers',
      text: 'Systems Engineer',
      position: 'Senior Systems Engineer',
    ),
    UserModel(
      image: 'assets/avatar/person14.jpg',
      name: 'Nickolos Jackson',
      text: 'Security Specialist',
      position: 'Cybersecurity Specialist',
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
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50, // Set height for the pills
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pills.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: PillWidget(
                              text: pills[index],
                              isSelected: selectedIndex == index,
                              onTap: () {
                                setState(() {
                                  selectedIndex =
                                      index; // Change selected pill on tap
                                });
                              },
                            ),
                          );
                        },
                      ),
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
                                        return CustomerInfoScreen(
                                          userModel: users[index],
                                        );
                                      },
                                    ));
                                  },
                                  child: CustomerCard(
                                    isSelected: cardselectedIndex == index,
                                    onTap: () {
                                      setState(() {
                                        cardselectedIndex =
                                            index; // Change selected pill on tap
                                      });
                                    },
                                    width: width,
                                    userModel: users[index],
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
