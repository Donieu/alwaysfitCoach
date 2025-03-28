// import 'package:alwaysfit/presentation/pages/daily_trains/daily_trains.dart';
// import 'package:alwaysfit/presentation/pages/nutritional_plan/nutritional_plan.dart';
// import 'package:alwaysfit/presentation/pages/profile/profile_page.dart';
// import 'package:alwaysfit/presentation/pages/progress/progress_page.dart';
// import 'package:flutter/material.dart';

// class MenuBottomBar extends StatefulWidget {
//   const MenuBottomBar({super.key});

//   @override
//   State<MenuBottomBar> createState() => _MenuBottomBarState();
// }

// class _MenuBottomBarState extends State<MenuBottomBar> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     DailyTrains(),
//    NutritionalPlan(),
//     ProgressPage(),
//     ProfilePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: SafeArea(
//       child: IndexedStack(
//         index: _currentIndex,
//         children: _pages,
//       ),
//     ),
//     bottomNavigationBar: BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Theme.of(context).cardColor,
//       selectedItemColor: Theme.of(context).colorScheme.primary,
//       unselectedItemColor: Colors.grey,
//       currentIndex: _currentIndex,
//       onTap: _onItemTapped,
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.fitness_center),
//           label: 'Plano diário',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.restaurant_menu),
//           label: 'Nutricional',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.bar_chart),
//           label: 'Progresso',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Perfil',
//         ),
//       ],
//     ),
//   );
// }
// }