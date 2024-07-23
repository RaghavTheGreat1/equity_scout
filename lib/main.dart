import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'providers/corporate_announcements_list_provider.dart';
import 'widgets/corporate_announcements_list_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyEquityScoutApp(),
    ),
  );
}

class MyEquityScoutApp extends StatelessWidget {
  const MyEquityScoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Equity Scout'),
        ),
        body: HookConsumer(
          builder: (context, ref, _) {
            final announcementsAsync =
                ref.watch(corporateAnnouncementsListProvider);

            return announcementsAsync.when(
              data: (data) {
                return CorporateAnnouncementListView(
                  announcements: data,
                );
              },
              error: (error, stackTrace) {
                return Center(
                  child: Text('Error: $error'),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
