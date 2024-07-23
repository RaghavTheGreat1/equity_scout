import 'package:freezed_annotation/freezed_annotation.dart';

part 'corporate_announcement.freezed.dart';
part 'corporate_announcement.g.dart';

@freezed
class CorporateAnnouncement with _$CorporateAnnouncement {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  factory CorporateAnnouncement({
    required String companySymbol,
    required String companyName,
    required String title,
    required String body,
    required String category,
    required String pdfLink,
    required String exchangeReceivedTime,
    required String exchangeDisseminatedTime,
    required String timeTaken,
  }) = _CorporateAnnouncement;

  factory CorporateAnnouncement.fromJson(Map<String, dynamic> json) =>
      _$CorporateAnnouncementFromJson(json);
}
