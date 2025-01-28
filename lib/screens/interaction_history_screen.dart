import 'dart:math';

import 'package:crm_app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class InteractionHistoryScreen extends StatelessWidget {
  const InteractionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF272815),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
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
                          color: const Color(0XFF2C3235)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Transform.rotate(
                          angle: pi,
                          child: Transform.scale(
                            scaleX: 0.7,
                            scaleY: 0.9,
                            child: Image.asset(
                              'assets/icons/back_arrow.png',
                              color: Colors.white,
                              width: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Interaction",
                        style: TextStyles.rubik15white22,
                      ),
                      Text(
                        "History",
                        style: TextStyles.rubik15white22,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0XFF2C3235)),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/icons/external-link.png',
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFF58c3f8),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFFffe54a),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color.fromARGB(251, 179, 155, 77),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFFdc7de5),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFF58c3f8),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFF58c3f8),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFFffe54a),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color.fromARGB(251, 179, 155, 77),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFFdc7de5),
              ),
              const SizedBox(
                height: 30,
              ),
              const InteractionCard(
                cardColor: Color(0xFF58c3f8),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InteractionCard extends StatelessWidget {
  final Color cardColor;
  const InteractionCard({
    super.key,
    required this.cardColor,
  });
  Color _getDarkerShade(Color color) {
    HSLColor hsl = HSLColor.fromColor(color);
    return hsl.withLightness((hsl.lightness - 0.1).clamp(0.0, 1.0)).toColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155,
      decoration: BoxDecoration(
        color: cardColor,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Oct 4",
                  style: TextStyles.rubik13grey82,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Royal Package",
                      style: TextStyles.rubik15black22,
                    ),
                    Text(
                      "Opportunity",
                      style: TextStyles.rubik15black22,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "${"11,250"} \$",
                  style: TextStyles.rubik17black22,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: CircleAvatar(
              backgroundColor: _getDarkerShade(cardColor),
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
          const Positioned(
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
                      radius: 20, // Adjust size
                      backgroundImage: AssetImage('assets/avatar/person2.jpg'),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    child: CircleAvatar(
                      radius: 20, // Adjust size
                      backgroundImage: AssetImage('assets/avatar/person5.jpg'),
                    ),
                  ),
                  Positioned(
                    right: 60,
                    child: CircleAvatar(
                      radius: 20, // Adjust size
                      backgroundImage: AssetImage('assets/avatar/person1.jpg'),
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
