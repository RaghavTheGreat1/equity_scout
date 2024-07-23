import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/corporate_announcement.dart';
import '../repositories/bse_data_repository.dart';

final corporateAnnouncementsListProvider =
    FutureProvider<List<CorporateAnnouncement>>((ref) async {
  final bseDataRepository = ref.watch(bseDataRepositoryProvider);
  final corporateAnnouncements =
      await bseDataRepository.getCorporateAnnouncements();
  return corporateAnnouncements;
});
