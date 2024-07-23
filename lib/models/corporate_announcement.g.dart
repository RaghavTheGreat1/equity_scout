// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corporate_announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CorporateAnnouncementImpl _$$CorporateAnnouncementImplFromJson(
        Map<String, dynamic> json) =>
    _$CorporateAnnouncementImpl(
      companySymbol: json['company_symbol'] as String,
      companyName: json['company_name'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      category: json['category'] as String,
      pdfLink: json['pdf_link'] as String,
      exchangeReceivedTime: json['exchange_received_time'] as String,
      exchangeDisseminatedTime: json['exchange_disseminated_time'] as String,
      timeTaken: json['time_taken'] as String,
    );

Map<String, dynamic> _$$CorporateAnnouncementImplToJson(
        _$CorporateAnnouncementImpl instance) =>
    <String, dynamic>{
      'company_symbol': instance.companySymbol,
      'company_name': instance.companyName,
      'title': instance.title,
      'body': instance.body,
      'category': instance.category,
      'pdf_link': instance.pdfLink,
      'exchange_received_time': instance.exchangeReceivedTime,
      'exchange_disseminated_time': instance.exchangeDisseminatedTime,
      'time_taken': instance.timeTaken,
    };
