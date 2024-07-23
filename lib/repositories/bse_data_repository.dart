import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/corporate_announcement.dart';
import '../providers/dio_provider.dart';
import 'remote_bse_data_repository.dart';

final bseDataRepositoryProvider = Provider<BseDataRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return RemoteBseDataRepository(
    dio: dio,
  );
});

abstract class BseDataRepository {
  Future<List<CorporateAnnouncement>> getCorporateAnnouncements();
}
