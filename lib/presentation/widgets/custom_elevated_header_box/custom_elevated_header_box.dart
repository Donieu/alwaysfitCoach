import 'package:flutter/material.dart';

class ElevatedHeaderBox extends StatelessWidget {
  final String title;

  const ElevatedHeaderBox({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: media.height * 0.1,
          width: media.width,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
