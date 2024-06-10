// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shrimp_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShrimpNewsImpl _$$ShrimpNewsImplFromJson(Map<String, dynamic> json) =>
    _$ShrimpNewsImpl(
      id: (json['id'] as num?)?.toInt(),
      authorId: (json['author_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      image: json['image'] as String?,
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      advertisement: json['advertisement'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      title: json['title'] as String?,
      seoTitle: json['seo_title'] as String?,
      excerpt: json['excerpt'] as String?,
      body: json['body'] as String?,
      slug: json['slug'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaKeywords: json['meta_keywords'] as String?,
    );

Map<String, dynamic> _$$ShrimpNewsImplToJson(_$ShrimpNewsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('author_id', instance.authorId);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('image', instance.image);
  writeNotNull('status', instance.status);
  writeNotNull('featured', instance.featured);
  writeNotNull('advertisement', instance.advertisement);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('title', instance.title);
  writeNotNull('seo_title', instance.seoTitle);
  writeNotNull('excerpt', instance.excerpt);
  writeNotNull('body', instance.body);
  writeNotNull('slug', instance.slug);
  writeNotNull('meta_description', instance.metaDescription);
  writeNotNull('meta_keywords', instance.metaKeywords);
  return val;
}
