import 'package:dio/dio.dart';
import '../models/corporate_announcement.dart';
import 'bse_data_repository.dart';

class RemoteBseDataRepository extends BseDataRepository {
  RemoteBseDataRepository({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<List<CorporateAnnouncement>> getCorporateAnnouncements() async {
    final response = await dio.post(
      '/corporate_announcements',
      data: {
        "pages": 1,
      },
    );
    final data = response.data;

    final parsedData = (data["message"] as List<dynamic>)
        .map((e) => CorporateAnnouncement.fromJson(e))
        .toList();

    return parsedData;
  }
}
