// import 'package:crm_app/core/model/user_model.dart';
// import 'package:crm_app/core/styles/text_styles.dart';
// import 'package:crm_app/screens/mobile/customer_info_mob_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class TestingScreen extends StatefulWidget {
//   const TestingScreen({super.key});

//   @override
//   State<TestingScreen> createState() => _TestingScreenState();
// }

// class _TestingScreenState extends State<TestingScreen> {
//   final List<UserModel> users = [
//     UserModel(
//       image: 'assets/avatar/person1.jpg',
//       name: 'John Smith',
//       text: 'Alabama Machinery',
//       position: 'Chemist',
//       address: '123 Main St, Alabama',
//       birthday: '1990-02-15',
//       email: 'john.smith@email.com',
//       lastVisit: '2024-01-10',
//       phone: '+1 234 567 890',
//     ),
//     UserModel(
//       image: 'assets/avatar/person2.jpg',
//       name: 'David Bright',
//       text: 'Founder, Tech Solutions',
//       position: 'CEO',
//       address: '456 Tech Lane, Silicon Valley',
//       birthday: '1985-08-22',
//       email: 'david.bright@email.com',
//       lastVisit: '2024-01-12',
//       phone: '+1 345 678 901',
//     ),
//     UserModel(
//       image: 'assets/avatar/person3.jpg',
//       name: 'Alex Peter',
//       text: 'Alabama Machinery',
//       position: 'Managing Director',
//       address: '789 Manufacturing Ave, Alabama',
//       birthday: '1980-05-10',
//       email: 'alex.peter@email.com',
//       lastVisit: '2024-01-15',
//       phone: '+1 456 789 012',
//     ),
//     UserModel(
//       image: 'assets/avatar/person4.jpg',
//       name: 'Daniel Chacko',
//       text: 'Creative Design Studio',
//       position: 'Lead Designer',
//       address: '101 Creative Blvd, Design City',
//       birthday: '1992-03-25',
//       email: 'daniel.chacko@email.com',
//       lastVisit: '2024-01-17',
//       phone: '+1 567 890 123',
//     ),
//     UserModel(
//       image: 'assets/avatar/person5.jpg',
//       name: 'Aleena Anto',
//       text: 'Qburst',
//       position: 'Full Stack Developer',
//       address: '202 Tech St, Bengaluru',
//       birthday: '1993-12-05',
//       email: 'aleena.anto@email.com',
//       lastVisit: '2024-01-18',
//       phone: '+91 987 654 321',
//     ),
//     UserModel(
//       image: 'assets/avatar/person6.jpg',
//       name: 'Abin P Xavier',
//       text: 'Alphabet',
//       position: 'Senior Data Analyst',
//       address: '303 Data Ave, Mountain View',
//       birthday: '1991-06-11',
//       email: 'abin.xavier@email.com',
//       lastVisit: '2024-01-20',
//       phone: '+1 678 901 234',
//     ),
//     UserModel(
//       image: 'assets/avatar/person7.jpg',
//       name: 'Elizabeth Mariyam',
//       text: 'Claysis',
//       position: 'Product Lead',
//       address: '404 Innovation Dr, Silicon Valley',
//       birthday: '1988-10-30',
//       email: 'elizabeth.mariyam@email.com',
//       lastVisit: '2024-01-22',
//       phone: '+1 789 012 345',
//     ),
//     UserModel(
//       image: 'assets/avatar/person8.jpg',
//       name: 'Clara Noel',
//       text: 'Technareus',
//       position: 'Marketing Head',
//       address: '505 Tech Park, New York',
//       birthday: '1990-07-18',
//       email: 'clara.noel@email.com',
//       lastVisit: '2024-01-24',
//       phone: '+1 890 123 456',
//     ),
//     UserModel(
//       image: 'assets/avatar/person10.jpg',
//       name: 'David Luca',
//       text: 'UST Global',
//       position: 'Cloud Solutions Architect',
//       address: '606 Cloud Rd, Boston',
//       birthday: '1987-09-02',
//       email: 'david.luca@email.com',
//       lastVisit: '2024-01-25',
//       phone: '+1 901 234 567',
//     ),
//     UserModel(
//       image: 'assets/avatar/person11.jpg',
//       name: 'Abhishek Sharma',
//       text: 'Wipro',
//       position: 'Senior Consultant',
//       address: '707 Consulting St, Mumbai',
//       birthday: '1990-01-12',
//       email: 'abhishek.sharma@email.com',
//       lastVisit: '2024-01-27',
//       phone: '+91 123 456 789',
//     ),
//     UserModel(
//       image: 'assets/avatar/person12.jpg',
//       name: 'Bibin Vargheese',
//       text: 'EY Consultants',
//       position: 'UX/UI Lead',
//       address: '808 UX Lane, Bengaluru',
//       birthday: '1992-11-15',
//       email: 'bibin.vargheese@email.com',
//       lastVisit: '2024-01-28',
//       phone: '+91 234 567 890',
//     ),
//     UserModel(
//       image: 'assets/avatar/person13.jpg',
//       name: 'Joel Johnson',
//       text: 'Alliance',
//       position: 'Senior Systems Engineer',
//       address: '909 Systems Ave, Dallas',
//       birthday: '1986-04-20',
//       email: 'joel.johnson@email.com',
//       lastVisit: '2024-01-29',
//       phone: '+1 012 345 678',
//     ),
//     UserModel(
//       image: 'assets/avatar/person14.jpg',
//       name: 'Prabhas Raj',
//       text: 'Black Rock',
//       position: 'Cybersecurity Specialist',
//       address: '1010 Security Blvd, Los Angeles',
//       birthday: '1994-05-02',
//       email: 'prabhas.raj@email.com',
//       lastVisit: '2024-01-30',
//       phone: '+1 123 456 789',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(children: [
//           const SizedBox(
//             height: 90,
//           ),
//           LayoutBuilder(
//             builder: (context, constraints) {
//               int crossAxisCount = (constraints.maxWidth / 190).floor();

//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: StaggeredGrid.count(
//                   crossAxisCount: crossAxisCount,
//                   mainAxisSpacing: 8.0,
//                   crossAxisSpacing: 8.0,
//                   children: users
//                       .map((user) => GestureDetector(
//                             onTap: () {
//                               Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) {
//                                   return CustomerInfoMobScreen(
//                                     userModel: user,
//                                   );
//                                 },
//                               ));
//                             },
//                             child: MyCard(
//                               isSelected: false,
//                               userModel: user,
//                               onTap: () {
//                                 // Handle tap event
//                               },
//                             ),
//                           ))
//                       .toList(),
//                 ),
//               );
//             },
//           ),
//         ]),
//       ),
//     );
//   }
// }
