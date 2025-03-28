import 'package:alwaysfit/presentation/widgets/custom_app_bar.dart/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: CustomAppBarAlwaysFit(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            CircleAvatar(
              
              radius: 50,
              backgroundColor: Colors.grey[300],
              backgroundImage: const NetworkImage('https://thispersondoesnotexist.com', ),
            ),
            const SizedBox(height: 16),
            Text(
              'Roberto Silva',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              'roberto@email.com',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 32),
            _ProfileTile(
              icon: Icons.fitness_center,
              title: 'Meus Treinos',
              onTap: () {},
            ),
            _ProfileTile(
              icon: Icons.restaurant,
              title: 'Plano Nutricional',
              onTap: () {},
            ),
            _ProfileTile(
              icon: Icons.bar_chart,
              title: 'Progresso',
              onTap: () {},
            ),
            _ProfileTile(
              icon: Icons.settings,
              title: 'Configurações',
              onTap: () {},
            ),
            const SizedBox(height: 32),
           
          ],
        ),
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _ProfileTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
