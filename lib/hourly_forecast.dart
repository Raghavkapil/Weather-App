import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  final String time;
  final IconData icons;
  final String value;
  final String date;
  const HourlyForecast(
      {super.key,
      required this.time,
      required this.icons,
      required this.date,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        child: Container(
          width: 100,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8,
              ),
              Icon(icons, size: 32),
              const SizedBox(
                height: 8,
              ),
              Text(value)
            ],
          ),
        ));
  }
}
