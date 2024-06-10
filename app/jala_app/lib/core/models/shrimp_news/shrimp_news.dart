import 'package:freezed_annotation/freezed_annotation.dart';

part 'shrimp_news.freezed.dart';
part 'shrimp_news.g.dart';

@freezed
class ShrimpNews with _$ShrimpNews {
  @JsonSerializable(includeIfNull: false)
  factory ShrimpNews({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "author_id") int? authorId,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "featured") bool? featured,
    @JsonKey(name: "advertisement") dynamic advertisement,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "seo_title") String? seoTitle,
    @JsonKey(name: "excerpt") String? excerpt,
    @JsonKey(name: "body") String? body,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "meta_description") String? metaDescription,
    @JsonKey(name: "meta_keywords") String? metaKeywords,
  }) = _ShrimpNews;

  factory ShrimpNews.fromJson(Map<String, dynamic> json) => _$ShrimpNewsFromJson(json);
}
