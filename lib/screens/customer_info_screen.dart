import 'dart:math';

import 'package:crm_app/core/styles/text_styles.dart';
import 'package:crm_app/screens/interaction_history_screen.dart';
import 'package:flutter/material.dart';

class CustomerInfoScreen extends StatelessWidget {
  const CustomerInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECEFEC),
      body: Padding(
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
                        padding: const EdgeInsets.all(8.0),
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
                        )
                        // Icon(
                        //   Icons.arrow_back_rounded,
                        //   color: Colors.black,
                        // ),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text("Customer", style: TextStyles.rubik18black22w100),
                        Text("Information",
                            style: TextStyles.rubik18black22w100),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "assets/icons/star.png",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const CustomerInfoCard(),
              const DetailedInfoCard(),
              const TaskScheduleCard(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskScheduleCard extends StatelessWidget {
  const TaskScheduleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFFFFE54A),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 5,
                  ),
                  child: Text(
                    "Task Schedule",
                    style: TextStyles.rubik16black22,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFFF2DA46),
                      borderRadius: BorderRadius.circular(50)),
                  width: 50,
                  height: 50,
                  child: const Icon(Icons.edit),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFF332E0F),
                      borderRadius: BorderRadius.circular(50)),
                  width: 50,
                  height: 50,
                  child: Transform.rotate(
                    angle: -45 * 3.1415927 / 180,
                    child: Transform.scale(
                      scaleX: 0.6,
                      scaleY: 0.6,
                      child: Image.asset(
                        'assets/icons/back_arrow.png',
                        color: Colors.white,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              "October",
              style: TextStyles.rubik18black22w600,
            ),
          ),
          // Dates grid for October
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7, // 7 days in a week
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0, childAspectRatio: 1 / 1.4,
              ),
              itemCount: 31, // Number of days in October
              itemBuilder: (context, index) {
                int date = index + 1; // Dates from 1 to 31
                Map<int, dynamic> customDateImages = {
                  4: {
                    'image': 'assets/avatar/person1.jpg',
                    'color': const Color(0XFF58C3F8)
                  },
                  11: {
                    'image': 'assets/avatar/person2.jpg',
                    'color': const Color(0XFFFFFFFF)
                  },
                  12: {
                    'image': 'assets/avatar/person5.jpg',
                    'color': const Color(0XFFD3C689)
                  },
                  16: {
                    'image': 'assets/avatar/person1.jpg',
                    'color': const Color(0XFFDC7DE5)
                  },
                  19: {
                    'image': 'assets/avatar/person2.jpg',
                    'color': const Color.fromARGB(255, 125, 229, 217)
                  },
                  24: {
                    'image': 'assets/avatar/person5.jpg',
                    'color': const Color.fromARGB(255, 133, 248, 88)
                  },
                };
                return Container(
                  width: 30,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: customDateImages.containsKey(date)
                        ? customDateImages[date]!['color']
                        : Colors
                            .transparent, // Custom color for each special date

                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ), // Border color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: customDateImages.containsKey(date)
                      ? Stack(
                          children: [
                            Positioned(
                              bottom: 2,
                              left: 2,
                              child: Text(
                                '$date', // Displaying the date
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 2,
                              right: 4,
                              child: CircleAvatar(
                                radius: 12, // Adjust size
                                backgroundImage: AssetImage(
                                    customDateImages[date]!['image']),
                              ),
                            ),
                          ],
                        )
                      : Stack(
                          children: [
                            Positioned(
                              bottom: 2,
                              left: 2,
                              child: Text(
                                '$date', // Displaying the date
                                style: const TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                  // Custom color for special dates
                );
              },
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}

class DetailedInfoCard extends StatelessWidget {
  const DetailedInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0XFFF5F6EC),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(
            "Detailed Information",
            style: TextStyles.rubik14black22,
          ),
          const Spacer(),
          const CircularIcon(
            icon: Icon(
              Icons.edit,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircularIcon(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.rotate(
                angle: -45 * 3.1415927 / 180,
                child: Transform.scale(
                  scaleX: 0.6,
                  scaleY: 0.6,
                  child: Image.asset(
                    'assets/icons/back_arrow.png',
                    color: Colors.black,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class CustomerInfoCard extends StatelessWidget {
  const CustomerInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFFE8E9DF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircularIcon(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/icons/merge.png"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircularIcon(
                  icon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/icons/diverge.png"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return InteractionHistoryScreen();
                      },
                    ));
                  },
                  child: CircularIcon(
                    icon: Icon(Icons.more_horiz_outlined),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50, // Adjust size
                  backgroundImage: AssetImage('assets/avatar/person5.jpg'),
                ),
                Text(
                  "Eva Robinsion",
                  style: TextStyles.rubik17black22w200,
                ),
                Text(
                  "CEO, Inc, Alabama MAchinery &/n Supply",
                  style: TextStyles.rubik14black22w200,
                  textAlign: TextAlign.center,
                ),
                //   rubik14black22w200
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const OptionsIcons(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class OptionsIcons extends StatelessWidget {
  const OptionsIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularIcon(
            icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/icons/edit_outer.png"),
        )),
        const SizedBox(
          width: 10,
        ), //
        CircularIcon(
          icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset("assets/icons/email.png"),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CircularIcon(
          icon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Transform.rotate(
              angle: 0.2,
              child: Image.asset(
                "assets/icons/call.png",
                width: 12,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CircularIcon(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/icons/calender_plus.png"),
          ),
        ),
      ],
    );
  }
}

class CircularIcon extends StatelessWidget {
  final Widget icon;
  const CircularIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: icon,
    );
  }
}

//-------------------------------