import 'dart:math';
import 'package:crm_app/core/model/interaction_model.dart';
import 'package:crm_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class InteractionHistoryTabScreen extends StatefulWidget {
  const InteractionHistoryTabScreen({super.key});

  @override
  State<InteractionHistoryTabScreen> createState() =>
      _InteractionHistoryTabScreenState();
}

class _InteractionHistoryTabScreenState
    extends State<InteractionHistoryTabScreen> {
  final List<InteractionModel> interactionModel = [
    InteractionModel(
      color: Color(0xFFEF5350), // Red
      date: 'Oct 4',
      images: [
        'assets/avatar/person1.jpg',
        'assets/avatar/person2.jpg',
        'assets/avatar/person3.jpg',
      ],
      price: '11,250',
      text: 'Royal Package ',
    ),
    InteractionModel(
      color: Color(0xFF66BB6A), // Green
      date: 'Oct 5',
      images: [
        'assets/avatar/person4.jpg',
        'assets/avatar/person5.jpg',
        'assets/avatar/person6.jpg',
      ],
      price: '12,500',
      text: 'Deluxe Package ',
    ),
    InteractionModel(
      color: Color(0xFFFFEB3B), // Yellow
      date: 'Oct 6',
      images: [
        'assets/avatar/person7.jpg',
        'assets/avatar/person8.jpg',
        'assets/avatar/person9.jpg',
      ],
      price: '15,000',
      text: 'Gold Package ',
    ),
    InteractionModel(
      color: Color(0xFFAB47BC), // Purple
      date: 'Oct 7',
      images: [
        'assets/avatar/person10.jpg',
        'assets/avatar/person11.jpg',
        'assets/avatar/person12.jpg',
      ],
      price: '18,000',
      text: 'Platinum Package ',
    ),
    InteractionModel(
      color: Color(0xFFFF9800), // Orange
      date: 'Oct 8',
      images: [
        'assets/avatar/person13.jpg',
        'assets/avatar/person14.jpg',
        'assets/avatar/person1.jpg',
      ],
      price: '20,500',
      text: 'Premium Package ',
    ),
    InteractionModel(
      color: Color(0xFF03A9F4), // Blue
      date: 'Oct 9',
      images: [
        'assets/avatar/person2.jpg',
        'assets/avatar/person3.jpg',
        'assets/avatar/person4.jpg',
      ],
      price: '9,750',
      text: 'Basic Package ',
    ),
    InteractionModel(
      color: Color(0xFF8E24AA), // Deep Pink
      date: 'Oct 10',
      images: [
        'assets/avatar/person5.jpg',
        'assets/avatar/person6.jpg',
        'assets/avatar/person7.jpg',
      ],
      price: '13,800',
      text: 'Luxury Package ',
    ),
    InteractionModel(
      color: Color(0xFF00E5FF), // Cyan
      date: 'Oct 11',
      images: [
        'assets/avatar/person8.jpg',
        'assets/avatar/person9.jpg',
        'assets/avatar/person10.jpg',
      ],
      price: '16,200',
      text: 'Exclusive Package ',
    ),
    InteractionModel(
      color: Color(0xFFFF5722), // Deep Orange
      date: 'Oct 12',
      images: [
        'assets/avatar/person11.jpg',
        'assets/avatar/person12.jpg',
        'assets/avatar/person13.jpg',
      ],
      price: '22,000',
      text: 'Elite Package ',
    ),
    InteractionModel(
      color: Color(0xFF00C853), // Green
      date: 'Oct 13',
      images: [
        'assets/avatar/person14.jpg',
        'assets/avatar/person1.jpg',
        'assets/avatar/person2.jpg',
      ],
      price: '19,000',
      text: 'Business Package ',
    ),
    InteractionModel(
      color: Color(0xFF29B6F6), // Light Blue
      date: 'Oct 14',
      images: [
        'assets/avatar/person3.jpg',
        'assets/avatar/person4.jpg',
        'assets/avatar/person5.jpg',
      ],
      price: '14,400',
      text: 'Startup Package ',
    ),
    InteractionModel(
      color: Color(0xFF8D6E63), // Brown
      date: 'Oct 15',
      images: [
        'assets/avatar/person6.jpg',
        'assets/avatar/person7.jpg',
        'assets/avatar/person8.jpg',
      ],
      price: '17,300',
      text: 'Developer Package ',
    ),
    InteractionModel(
      color: Color(0xFF7E57C2), // Lavender
      date: 'Oct 16',
      images: [
        'assets/avatar/person9.jpg',
        'assets/avatar/person10.jpg',
        'assets/avatar/person11.jpg',
      ],
      price: '21,800',
      text: 'Designer Package ',
    ),
    InteractionModel(
      color: Color(0xFF7C4DFF), // Purple Blue
      date: 'Oct 17',
      images: [
        'assets/avatar/person12.jpg',
        'assets/avatar/person13.jpg',
        'assets/avatar/person14.jpg',
      ],
      price: '23,500',
      text: 'Architect Package ',
    ),
    InteractionModel(
      color: Color(0xFFFFC107), // Amber
      date: 'Oct 18',
      images: [
        'assets/avatar/person1.jpg',
        'assets/avatar/person5.jpg',
        'assets/avatar/person9.jpg',
      ],
      price: '12,100',
      text: 'Standard Package ',
    ),
    InteractionModel(
      color: Color(0xFF26C6DA), // Light Cyan
      date: 'Oct 19',
      images: [
        'assets/avatar/person2.jpg',
        'assets/avatar/person6.jpg',
        'assets/avatar/person10.jpg',
      ],
      price: '16,800',
      text: 'Advanced Package ',
    ),
    InteractionModel(
      color: Color(0xFF1DE9B6), // Teal
      date: 'Oct 20',
      images: [
        'assets/avatar/person3.jpg',
        'assets/avatar/person7.jpg',
        'assets/avatar/person11.jpg',
      ],
      price: '14,600',
      text: 'Pro Package ',
    ),
    InteractionModel(
      color: Color(0xFF536DFE), // Indigo
      date: 'Oct 21',
      images: [
        'assets/avatar/person4.jpg',
        'assets/avatar/person8.jpg',
        'assets/avatar/person12.jpg',
      ],
      price: '18,400',
      text: 'Business Plus Package ',
    ),
    InteractionModel(
      color: Color(0xFFDD2C00), // Bright Red
      date: 'Oct 22',
      images: [
        'assets/avatar/person5.jpg',
        'assets/avatar/person9.jpg',
        'assets/avatar/person13.jpg',
      ],
      price: '19,600',
      text: 'Professional Package ',
    ),
    InteractionModel(
      color: Color(0xFF1B5E20), // Dark Green
      date: 'Oct 23',
      images: [
        'assets/avatar/person6.jpg',
        'assets/avatar/person10.jpg',
        'assets/avatar/person14.jpg',
      ],
      price: '22,800',
      text: 'Platinum Plus Package ',
    ),
    InteractionModel(
      color: Color(0xFF0288D1), // Blue
      date: 'Oct 24',
      images: [
        'assets/avatar/person7.jpg',
        'assets/avatar/person11.jpg',
        'assets/avatar/person1.jpg',
      ],
      price: '21,500',
      text: 'Exclusive Plus Package ',
    ),
    InteractionModel(
      color: Color(0xFFFF80AB), // Pink
      date: 'Oct 25',
      images: [
        'assets/avatar/person8.jpg',
        'assets/avatar/person12.jpg',
        'assets/avatar/person2.jpg',
      ],
      price: '23,000',
      text: 'VIP Package ',
    ),
    InteractionModel(
      color: Color(0xFF00E676), // Light Green
      date: 'Oct 26',
      images: [
        'assets/avatar/person9.jpg',
        'assets/avatar/person13.jpg',
        'assets/avatar/person3.jpg',
      ],
      price: '20,100',
      text: 'Platinum Elite Package ',
    ),
    InteractionModel(
      color: Color(0xFF8D6E63), // Dark Brown
      date: 'Oct 27',
      images: [
        'assets/avatar/person10.jpg',
        'assets/avatar/person14.jpg',
        'assets/avatar/person4.jpg',
      ],
      price: '17,900',
      text: 'Elite Plus Package ',
    ),
    InteractionModel(
      color: Color(0xFF009688), // Teal
      date: 'Oct 28',
      images: [
        'assets/avatar/person11.jpg',
        'assets/avatar/person1.jpg',
        'assets/avatar/person5.jpg',
      ],
      price: '13,000',
      text: 'Basic Plus Package ',
    ),
    InteractionModel(
      color: Color(0xFF512DA8), // Deep Purple
      date: 'Oct 29',
      images: [
        'assets/avatar/person12.jpg',
        'assets/avatar/person6.jpg',
        'assets/avatar/person10.jpg',
      ],
      price: '15,700',
      text: 'Advanced Plus Package ',
    ),
    InteractionModel(
      color: Color(0xFF1E88E5), // Bright Blue
      date: 'Oct 30',
      images: [
        'assets/avatar/person13.jpg',
        'assets/avatar/person7.jpg',
        'assets/avatar/person11.jpg',
      ],
      price: '18,100',
      text: 'Ultimate Package ',
    ),
    InteractionModel(
      color: Color(0xFF8E24AA), // Pink
      date: 'Oct 31',
      images: [
        'assets/avatar/person14.jpg',
        'assets/avatar/person8.jpg',
        'assets/avatar/person2.jpg',
      ],
      price: '19,800',
      text: 'Super Package ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Dynamically adjust the number of columns based on screen width
    int crossAxisCount = screenWidth > 600
        ? 3
        : 2; // 3 items for large screens, 2 for smaller ones

    return Scaffold(
      backgroundColor: const Color(0XFF272815),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: null,
            backgroundColor: const Color(0XFF272815),
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
                              color: const Color(0XFF2C3235),
                              width: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16, // More space between back button and title
                  ),
                  Text(
                    "Interaction History",
                    style: TextStyles.rubik15white22, // Increased font size
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 50, // Slightly bigger icon for tablet
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0XFF2C3235),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/icons/external-link.png',
                        color: Colors.white,
                        width: 35,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24, // Increased horizontal padding for tablets
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),

                // Use GridView to create a grid of cards
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount, // Dynamically set columns
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio:
                        1.2, // Smaller aspect ratio to reduce card size
                  ),
                  itemCount: interactionModel.length, // Number of cards
                  itemBuilder: (context, index) {
                    // Generate cards with different colors
                    return InteractionCard(
                      interactionModel: interactionModel[index],
                      cardColor: index % 2 == 0
                          ? const Color(0xFF58c3f8)
                          : const Color(0xFFffe54a),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InteractionCard extends StatelessWidget {
  final InteractionModel interactionModel;
  final Color cardColor;
  const InteractionCard({
    super.key,
    required this.cardColor,
    required this.interactionModel,
  });

  Color _getDarkerShade(Color color) {
    HSLColor hsl = HSLColor.fromColor(color);
    return hsl.withLightness((hsl.lightness - 0.1).clamp(0.0, 1.0)).toColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100, // Reduced height for the cards
      decoration: BoxDecoration(
        color: interactionModel.color,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 15,
            ),
            child: SizedBox(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    interactionModel.date,
                    style: TextStyles.rubik13grey82w500,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        interactionModel.text,
                        style: TextStyles.rubik15black22w400,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "${interactionModel.price} \$",
                    style: TextStyles.rubik17black22,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: CircleAvatar(
              backgroundColor: _getDarkerShade(interactionModel.color),
              radius: 25,
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
          Positioned(
            bottom: 12,
            right: 12,
            child: SizedBox(
              width: 190,
              height: 40,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 15, // Adjust size
                      backgroundImage: AssetImage(interactionModel.images[1]),
                    ),
                  ),
                  Positioned(
                    right: 25,
                    child: CircleAvatar(
                      radius: 15, // Adjust size
                      backgroundImage: AssetImage(interactionModel.images[2]),
                    ),
                  ),
                  Positioned(
                    right: 45,
                    child: CircleAvatar(
                      radius: 15, // Adjust size
                      backgroundImage: AssetImage(interactionModel.images[0]),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
