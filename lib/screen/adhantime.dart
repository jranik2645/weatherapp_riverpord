import 'package:flutter/material.dart';

class AdhanTimesScreen extends StatelessWidget {
  // Mock data for Adhan times
  final Map<String, String> prayerTimes = {
    'Fajr': '05:10 AM',
    'Dhuhr': '12:30 PM',
    'Asr': '03:45 PM',
    'Maghrib': '06:20 PM',
    'Isha': '07:40 PM',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adhan Times',),
         centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: prayerTimes.length,
        itemBuilder: (context, index) {
          String prayer = prayerTimes.keys.elementAt(index);
          String time = prayerTimes[prayer]!;
          return Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.access_time, color: Colors.teal),
              title: Text(
                prayer,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(time, style: TextStyle(color: Colors.grey)),
            ),
          );
        },
      ),
    );
  }
}