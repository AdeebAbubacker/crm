import 'dart:math';

import 'package:crm_app/core/model/user_model.dart';
import 'package:crm_app/core/styles/text_styles.dart';
import 'package:crm_app/screens/mobile/customer_info_mob_screen.dart';
import 'package:crm_app/screens/tablet/interaction_history_tab_screen.dart';
import 'package:flutter/material.dart';

class CustomerInfoTabScreen extends StatelessWidget {
  final UserModel userModel;
  const CustomerInfoTabScreen({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECEFEC),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: AppBar(
            forceMaterialTransparency: true,
            automaticallyImplyLeading: false,
            leading: null,
            backgroundColor: const Color(0XFFECEFEC),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
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
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Customer Information",
                          style: TextStyles.rubik18black22w100),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      width: 35,
                      height: 35,
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            // Left side: Customer Info Section
            Container(
              width: 220, // Adjusted for better tablet fit
              padding: const EdgeInsets.all(16),
              child: CustomerInfoCard(userModel: userModel),
            ),
            // Right side: Main Content (Tab or other sections)
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Interaction History Tab
                    InteractionHistoryTab(),
                    SizedBox(height: 20),
                    // Task Schedule Tab
                    //  Expanded(child: TaskScheduleTab()),
                    TaskScheduleCard()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerInfoCard extends StatelessWidget {
  final UserModel userModel;
  const CustomerInfoCard({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFE8E9DF),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(userModel.image),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userModel.name,
                style: TextStyles.rubik12black14w400,
              ),
              Text(userModel.email, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 8),
              Text('Phone: ', style: TextStyles.boldLabel),
              Text(userModel.phone, style: TextStyles.normalText),
              const SizedBox(height: 8),
              Text('Address: ', style: TextStyles.boldLabel),
              Text(userModel.address, style: TextStyles.normalText),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            'Birthday:',
            style: TextStyles.rubik14black22w600,
          ),
          Text(
            '${userModel.birthday}',
            style: TextStyles.rubik14black22w600,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, color: Colors.blue),
              const SizedBox(width: 8),
              Text(
                'Last Visit:',
                style: TextStyles.rubik14black22w600,
              ),
            ],
          ),
          Text(
            '${userModel.lastVisit}',
            style: TextStyles.rubik14black22w600,
          ),
        ],
      ),
    );
  }
}

class InteractionHistoryTab extends StatelessWidget {
  const InteractionHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Interaction History", style: TextStyles.rubik16Black14w600),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const InteractionHistoryTabScreen();
                    },
                  ));
                },
                child: Icon(Icons.more_horiz_outlined),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Example interactions
          const InteractionCard(
            title: 'Call with Customer',
            date: '2024-01-25',
            description: 'Discussed product feedback and service satisfaction.',
          ),
        ],
      ),
    );
  }
}

class InteractionCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  const InteractionCard({
    super.key,
    required this.title,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyles.rubik16Black22,
            ),
            const SizedBox(height: 8),
            Text(
              date,
              style: TextStyles.rubik14greyw400,
            ),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String taskName;
  final String dueDate;
  final String status;
  const TaskCard({
    super.key,
    required this.taskName,
    required this.dueDate,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(taskName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('Due: $dueDate',
                    style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const Spacer(),
            Chip(
                label:
                    Text(status, style: const TextStyle(color: Colors.white)),
                backgroundColor:
                    status == 'Completed' ? Colors.green : Colors.orange),
          ],
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
                    style: TextStyles.rubik16black22w400,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFFF2DA46),
                      borderRadius: BorderRadius.circular(50)),
                  width: 40,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    child: Image.asset(
                      'assets/icons/external-link.png',
                      color: const Color.fromARGB(255, 59, 59, 59),
                      width: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFF332E0F),
                      borderRadius: BorderRadius.circular(50)),
                  width: 40,
                  height: 40,
                  child: Transform.rotate(
                    angle: -45 * 3.1415927 / 180,
                    child: Transform.scale(
                      scaleX: 0.6,
                      scaleY: 0.6,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/icons/back_arrow.png',
                          color: Colors.white,
                          width: 30,
                        ),
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
              style: TextStyles.rubik16black22w600,
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              // Get the available width and height
              double availableWidth = constraints.maxWidth;
              double availableHeight = constraints.maxHeight;

              // Calculate the number of columns based on available width
              int columns = (availableWidth / 50)
                  .floor(); // 50 is the max width of each item

              // Calculate the number of rows (e.g., 7 rows for a calendar-like layout)
              int rows = 7; // Assuming 7 rows for the calendar-like grid

              // Calculate the height of each item based on available height
              double itemHeight = availableHeight / rows;

              // Calculate the width of each item based on available width and columns
              double itemWidth = availableWidth / columns;

              // Use the smaller of the itemWidth and itemHeight to ensure no overflow
              double itemSize = itemWidth < itemHeight ? itemWidth : itemHeight;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        columns, // Dynamic number of columns based on width
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount:
                      30, // Number of days in the month (e.g., 31 for October)
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
                      width: itemSize, // Dynamically calculated width
                      height: itemSize, // Dynamically calculated height
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: customDateImages.containsKey(date)
                            ? customDateImages[date]!['color']
                            : Colors.transparent,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: customDateImages.containsKey(date)
                          ? Stack(
                              children: [
                                Positioned(
                                  bottom: 2,
                                  left: 2,
                                  child: Text(
                                    '$date',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 2,
                                  right: 4,
                                  child: CircleAvatar(
                                    radius: 9,
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
                                    '$date',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
