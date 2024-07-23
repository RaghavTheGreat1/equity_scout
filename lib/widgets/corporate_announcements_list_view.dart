import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/corporate_announcement.dart';

class CorporateAnnouncementListView extends StatelessWidget {
  const CorporateAnnouncementListView({
    super.key,
    required this.announcements,
  });

  final List<CorporateAnnouncement> announcements;

  Future<void> _openPdfLink(String url) async {
    final uri = Uri.parse("https://www.bseindia.com/$url");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        final announcement = announcements[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  announcement.companyName,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  announcement.title,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Category: ${announcement.category}',
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  announcement.body,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Received: ${announcement.exchangeReceivedTime}',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Disseminated: ${announcement.exchangeDisseminatedTime}',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () async {
                    await _openPdfLink(announcement.pdfLink);
                  },
                  child: const Text(
                    'PDF Link',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
