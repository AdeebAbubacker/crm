import 'dart:math';

import 'package:crm_app/core/model/user_model.dart';
import 'package:crm_app/core/styles/text_styles.dart';
import 'package:crm_app/screens/mobile/customer_info_mob_screen.dart';
import 'package:crm_app/test/testing_screen.dart';
import 'package:crm_app/widgets/customer_card.dart';
import 'package:crm_app/widgets/pill_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AllCustomersMobScreen extends StatefulWidget {
  const AllCustomersMobScreen({super.key});

  @override
  State<AllCustomersMobScreen> createState() => _AllCustomersMobScreenState();
}

class _AllCustomersMobScreenState extends State<AllCustomersMobScreen> {
  final List<String> pills = ["All", "Permanent", "Hot", "New"];
  int selectedIndex = 0;
  int cardselectedIndex = -1;
  final List<UserModel> alluserslist = [
    UserModel(
      image: 'assets/avatar/person1.jpg',
      name: 'John Smith',
      text: 'Alabama Machinery',
      position: 'Chemist',
      address: '123 Main St, Alabama',
      birthday: '15th Feb 1990',
      email: 'john.smith@email.com',
      lastVisit: '10th Jan 2024',
      phone: '+1 234 567 890',
    ),
    UserModel(
      image: 'assets/avatar/person2.jpg',
      name: 'David Bright',
      text: 'Founder, Tech Solutions',
      position: 'CEO',
      address: '456 Tech Lane, Silicon Valley',
      birthday: '22nd Aug 1985',
      email: 'david.bright@email.com',
      lastVisit: '12th Jan 2024',
      phone: '+1 345 678 901',
    ),
    UserModel(
      image: 'assets/avatar/person3.jpg',
      name: 'Alex Peter',
      text: 'Alabama Machinery',
      position: 'Managing Director',
      address: '789 Manufacturing Ave, Alabama',
      birthday: '10th May 1980',
      email: 'alex.peter@email.com',
      lastVisit: '15th Jan 2024',
      phone: '+1 456 789 012',
    ),
    UserModel(
      image: 'assets/avatar/person4.jpg',
      name: 'Daniel Chacko',
      text: 'Creative Design Studio',
      position: 'Lead Designer',
      address: '101 Creative Blvd, Design City',
      birthday: '25th Mar 1992',
      email: 'daniel.chacko@email.com',
      lastVisit: '17th Jan 2024',
      phone: '+1 567 890 123',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Aleena Anto',
      text: 'Qburst',
      position: 'Full Stack Developer',
      address: '202 Tech St, Bengaluru',
      birthday: '5th Dec 1993',
      email: 'aleena.anto@email.com',
      lastVisit: '18th Jan 2024',
      phone: '+91 987 654 321',
    ),
    UserModel(
      image: 'assets/avatar/person6.jpg',
      name: 'Abin P Xavier',
      text: 'Alphabet',
      position: 'Senior Data Analyst',
      address: '303 Data Ave, Mountain View',
      birthday: '11th Jun 1991',
      email: 'abin.xavier@email.com',
      lastVisit: '20th Jan 2024',
      phone: '+1 678 901 234',
    ),
    UserModel(
      image: 'assets/avatar/person7.jpg',
      name: 'Elizabeth Mariyam',
      text: 'Claysis',
      position: 'Product Lead',
      address: '404 Innovation Dr, Silicon Valley',
      birthday: '30th Oct 1988',
      email: 'elizabeth.mariyam@email.com',
      lastVisit: '22nd Jan 2024',
      phone: '+1 789 012 345',
    ),
    UserModel(
      image: 'assets/avatar/person8.jpg',
      name: 'Clara Noel',
      text: 'Technareus',
      position: 'Marketing Head',
      address: '505 Tech Park, New York',
      birthday: '18th Jul 1990',
      email: 'clara.noel@email.com',
      lastVisit: '24th Jan 2024',
      phone: '+1 890 123 456',
    ),
    UserModel(
      image: 'assets/avatar/person10.jpg',
      name: 'David Luca',
      text: 'UST Global',
      position: 'Cloud Solutions Architect',
      address: '606 Cloud Rd, Boston',
      birthday: '2nd Sep 1987',
      email: 'david.luca@email.com',
      lastVisit: '25th Jan 2024',
      phone: '+1 901 234 567',
    ),
    UserModel(
      image: 'assets/avatar/person11.jpg',
      name: 'Abhishek Sharma',
      text: 'Wipro',
      position: 'Senior Consultant',
      address: '707 Consulting St, Mumbai',
      birthday: '12th Jan 1990',
      email: 'abhishek.sharma@email.com',
      lastVisit: '27th Jan 2024',
      phone: '+91 123 456 789',
    ),
    UserModel(
      image: 'assets/avatar/person12.jpg',
      name: 'Bibin Vargheese',
      text: 'EY Consultants',
      position: 'UX/UI Lead',
      address: '808 UX Lane, Bengaluru',
      birthday: '15th Nov 1992',
      email: 'bibin.vargheese@email.com',
      lastVisit: '28th Jan 2024',
      phone: '+91 234 567 890',
    ),
    UserModel(
      image: 'assets/avatar/person13.jpg',
      name: 'Joel Johnson',
      text: 'Alliance',
      position: 'Senior Systems Engineer',
      address: '909 Systems Ave, Dallas',
      birthday: '20th Apr 1986',
      email: 'joel.johnson@email.com',
      lastVisit: '29th Jan 2024',
      phone: '+1 012 345 678',
    ),
    UserModel(
      image: 'assets/avatar/person14.jpg',
      name: 'Prabhas Raj',
      text: 'Black Rock',
      position: 'Cybersecurity Specialist',
      address: '1010 Security Blvd, Los Angeles',
      birthday: '2nd May 1994',
      email: 'prabhas.raj@email.com',
      lastVisit: '30th Jan 2024',
      phone: '+1 123 456 789',
    ),
  ];

  final List<UserModel> permanentusers = [
    UserModel(
      image: 'assets/avatar/person4.jpg',
      name: 'Daniel Chacko',
      text: 'Creative Design Studio',
      position: 'Lead Designer',
      address: '101 Creative Blvd, Design City',
      birthday: '25th Mar 1992',
      email: 'daniel.chacko@email.com',
      lastVisit: '17th Jan 2024',
      phone: '+1 567 890 123',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Aleena Anto',
      text: 'Qburst',
      position: 'Full Stack Developer',
      address: '202 Tech St, Bengaluru',
      birthday: '5th Dec 1993',
      email: 'aleena.anto@email.com',
      lastVisit: '18th Jan 2024',
      phone: '+91 987 654 321',
    ),
    UserModel(
      image: 'assets/avatar/person6.jpg',
      name: 'Abin P Xavier',
      text: 'Alphabet',
      position: 'Senior Data Analyst',
      address: '303 Data Ave, Mountain View',
      birthday: '11th Jun 1991',
      email: 'abin.xavier@email.com',
      lastVisit: '20th Jan 2024',
      phone: '+1 678 901 234',
    ),
  ];
  final List<UserModel> hotusers = [
    UserModel(
      image: 'assets/avatar/person3.jpg',
      name: 'Alex Peter',
      text: 'Alabama Machinery',
      position: 'Managing Director',
      address: '789 Manufacturing Ave, Alabama',
      birthday: '10th May 1980',
      email: 'alex.peter@email.com',
      lastVisit: '15th Jan 2024',
      phone: '+1 456 789 012',
    ),
    UserModel(
      image: 'assets/avatar/person4.jpg',
      name: 'Daniel Chacko',
      text: 'Creative Design Studio',
      position: 'Lead Designer',
      address: '101 Creative Blvd, Design City',
      birthday: '25th Mar 1992',
      email: 'daniel.chacko@email.com',
      lastVisit: '17th Jan 2024',
      phone: '+1 567 890 123',
    ),
    UserModel(
      image: 'assets/avatar/person5.jpg',
      name: 'Aleena Anto',
      text: 'Qburst',
      position: 'Full Stack Developer',
      address: '202 Tech St, Bengaluru',
      birthday: '5th Dec 1993',
      email: 'aleena.anto@email.com',
      lastVisit: '18th Jan 2024',
      phone: '+91 987 654 321',
    ),
    UserModel(
      image: 'assets/avatar/person6.jpg',
      name: 'Abin P Xavier',
      text: 'Alphabet',
      position: 'Senior Data Analyst',
      address: '303 Data Ave, Mountain View',
      birthday: '11th Jun 1991',
      email: 'abin.xavier@email.com',
      lastVisit: '20th Jan 2024',
      phone: '+1 678 901 234',
    ),
    UserModel(
      image: 'assets/avatar/person7.jpg',
      name: 'Elizabeth Mariyam',
      text: 'Claysis',
      position: 'Product Lead',
      address: '404 Innovation Dr, Silicon Valley',
      birthday: '30th Oct 1988',
      email: 'elizabeth.mariyam@email.com',
      lastVisit: '22nd Jan 2024',
      phone: '+1 789 012 345',
    ),
    UserModel(
      image: 'assets/avatar/person8.jpg',
      name: 'Clara Noel',
      text: 'Technareus',
      position: 'Marketing Head',
      address: '505 Tech Park, New York',
      birthday: '18th Jul 1990',
      email: 'clara.noel@email.com',
      lastVisit: '24th Jan 2024',
      phone: '+1 890 123 456',
    ),
    UserModel(
      image: 'assets/avatar/person10.jpg',
      name: 'David Luca',
      text: 'UST Global',
      position: 'Cloud Solutions Architect',
      address: '606 Cloud Rd, Boston',
      birthday: '2nd Sep 1987',
      email: 'david.luca@email.com',
      lastVisit: '25th Jan 2024',
      phone: '+1 901 234 567',
    ),
    UserModel(
      image: 'assets/avatar/person11.jpg',
      name: 'Abhishek Sharma',
      text: 'Wipro',
      position: 'Senior Consultant',
      address: '707 Consulting St, Mumbai',
      birthday: '12th Jan 1990',
      email: 'abhishek.sharma@email.com',
      lastVisit: '27th Jan 2024',
      phone: '+91 123 456 789',
    ),
    UserModel(
      image: 'assets/avatar/person12.jpg',
      name: 'Bibin Vargheese',
      text: 'EY Consultants',
      position: 'UX/UI Lead',
      address: '808 UX Lane, Bengaluru',
      birthday: '15th Nov 1992',
      email: 'bibin.vargheese@email.com',
      lastVisit: '28th Jan 2024',
      phone: '+91 234 567 890',
    ),
    UserModel(
      image: 'assets/avatar/person13.jpg',
      name: 'Joel Johnson',
      text: 'Alliance',
      position: 'Senior Systems Engineer',
      address: '909 Systems Ave, Dallas',
      birthday: '20th Apr 1986',
      email: 'joel.johnson@email.com',
      lastVisit: '29th Jan 2024',
      phone: '+1 012 345 678',
    ),
  ];

  final List<UserModel> newusers = [
    UserModel(
      image: 'assets/avatar/person11.jpg',
      name: 'Abhishek Sharma',
      text: 'Wipro',
      position: 'Senior Consultant',
      address: '707 Consulting St, Mumbai',
      birthday: '12th Jan 1990',
      email: 'abhishek.sharma@email.com',
      lastVisit: '27th Jan 2024',
      phone: '+91 123 456 789',
    ),
    UserModel(
      image: 'assets/avatar/person12.jpg',
      name: 'Bibin Vargheese',
      text: 'EY Consultants',
      position: 'UX/UI Lead',
      address: '808 UX Lane, Bengaluru',
      birthday: '15th Nov 1992',
      email: 'bibin.vargheese@email.com',
      lastVisit: '28th Jan 2024',
      phone: '+91 234 567 890',
    ),
    UserModel(
      image: 'assets/avatar/person8.jpg',
      name: 'Clara Noel',
      text: 'Technareus',
      position: 'Marketing Head',
      address: '505 Tech Park, New York',
      birthday: '18th Jul 1990',
      email: 'clara.noel@email.com',
      lastVisit: '24th Jan 2024',
      phone: '+1 890 123 456',
    ),
    UserModel(
      image: 'assets/avatar/person10.jpg',
      name: 'David Luca',
      text: 'UST Global',
      position: 'Cloud Solutions Architect',
      address: '606 Cloud Rd, Boston',
      birthday: '2nd Sep 1987',
      email: 'david.luca@email.com',
      lastVisit: '25th Jan 2024',
      phone: '+1 901 234 567',
    ),
    UserModel(
      image: 'assets/avatar/person13.jpg',
      name: 'Joel Johnson',
      text: 'Alliance',
      position: 'Senior Systems Engineer',
      address: '909 Systems Ave, Dallas',
      birthday: '20th Apr 1986',
      email: 'joel.johnson@email.com',
      lastVisit: '29th Jan 2024',
      phone: '+1 012 345 678',
    ),
    UserModel(
      image: 'assets/avatar/person14.jpg',
      name: 'Prabhas Raj',
      text: 'Black Rock',
      position: 'Cybersecurity Specialist',
      address: '1010 Security Blvd, Los Angeles',
      birthday: '2nd May 1994',
      email: 'prabhas.raj@email.com',
      lastVisit: '30th Jan 2024',
      phone: '+1 123 456 789',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: AppBar(
            leading: null,
            backgroundColor: const Color(0XFFECEFEC),
            forceMaterialTransparency: true,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                        Text("Your Customer", style: TextStyles.rubik15black18),
                        Text("Network", style: TextStyles.rubik15black18),
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
                        padding: const EdgeInsets.all(15.0),
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
            ),
          ),
        ),
      ),

      backgroundColor: const Color(0XFFECEFEC),
      body: SafeArea(
        child: SizedBox(
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
                                    cardselectedIndex = -1;
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
                          // Filter data based on selection
                          List<UserModel> filteredUsers;
                          if (selectedIndex == 0) {
                            filteredUsers = alluserslist; // Show all users
                          } else if (selectedIndex == 1) {
                            filteredUsers = permanentusers; // Example filter
                          } else if (selectedIndex == 2) {
                            filteredUsers = hotusers; // Example filter
                          } else if (selectedIndex == 3) {
                            filteredUsers = newusers; // Example filter
                          } else {
                            filteredUsers = alluserslist;
                          }

                          int crossAxisCount = (constraints.maxWidth / 150)
                              .floor()
                              .clamp(1, filteredUsers.length);

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: StaggeredGrid.count(
                              crossAxisCount: crossAxisCount,
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0,
                              children:
                                  filteredUsers.asMap().entries.map((entry) {
                                int index = entry.key;
                                UserModel user = entry.value;

                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return CustomerInfoMobScreen(
                                            userModel: user);
                                      },
                                    ));
                                  },
                                  child: MyCard(
                                    isSelected: cardselectedIndex == index,
                                    userModel: user,
                                    onTap: () {
                                      setState(() {
                                        cardselectedIndex =
                                            index; // Change selected card on tap
                                      });
                                    },
                                  ),
                                );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 200,
                    height: 60,
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
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class MyCard extends StatefulWidget {
  final bool isSelected;
  final VoidCallback onTap;

  final UserModel userModel;
  const MyCard({
    super.key,
    required this.userModel,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
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
        height: 190, // Fixed height for the container

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
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
                              style: TextStyles.rubik7black33w200,
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
                      height: 45,
                      width: 45,
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
