import 'package:crm_app/widgets/customer_card.dart';
import 'package:crm_app/widgets/pill_widget.dart';
import 'package:flutter/material.dart';

class AllCustomersScreen extends StatelessWidget {
  const AllCustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECEFEC),
      body: Stack(
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
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Your Customer",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Network",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Action for hide_image icon
                        },
                      ),
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
                        itemCount: 20,
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
                              child: CustomerCard(width: width),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        child: const Padding(
                          padding:
                              EdgeInsets.all(8), // Adjust padding for icon size
                          child: Icon(
                            Icons.settings,
                            color: Colors.black, // Icon color
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
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
                          padding: const EdgeInsets.all(
                              8), // Adjust padding for icon size
                          child: const Icon(
                            Icons.add,
                            color: Colors.black, // Icon color
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
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
                          padding: const EdgeInsets.all(
                              8), // Adjust padding for icon size
                          child: const Icon(
                            Icons.edit,
                            color: Colors.black, // Icon color
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
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
