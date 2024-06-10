import 'package:freezed_annotation/freezed_annotation.dart';

part 'diases_news.freezed.dart';
part 'diases_news.g.dart';

@freezed
class DiasesNews with _$DiasesNews {
  @JsonSerializable(includeIfNull: false)
  factory DiasesNews({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "short_name") String? shortName,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "meta_description") String? metaDescription,
    @JsonKey(name: "meta_keywords") String? metaKeywords,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "indication") String? indication,
    @JsonKey(name: "pathogen") String? pathogen,
    @JsonKey(name: "effect") String? effect,
    @JsonKey(name: "stability_viability") String? stabilityViability,
    @JsonKey(name: "handling") String? handling,
    @JsonKey(name: "regulation") String? regulation,
    @JsonKey(name: "reference") String? reference,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _DiasesNews;

  factory DiasesNews.fromJson(Map<String, dynamic> json) => _$DiasesNewsFromJson(json);
}
