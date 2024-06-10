// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diases_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiasesNewsImpl _$$DiasesNewsImplFromJson(Map<String, dynamic> json) =>
    _$DiasesNewsImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['full_name'] as String?,
      shortName: json['short_name'] as String?,
      image: json['image'] as String?,
      slug: json['slug'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaKeywords: json['meta_keywords'] as String?,
      status: json['status'] as String?,
      indication: json['indication'] as String?,
      pathogen: json['pathogen'] as String?,
      effect: json['effect'] as String?,
      stabilityViability: json['stability_viability'] as String?,
      handling: json['handling'] as String?,
      regulation: json['regulation'] as String?,
      reference: json['reference'] as String?,
      createdBy: (json['created_by'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DiasesNewsImplToJson(_$DiasesNewsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('full_name', instance.fullName);
  writeNotNull('short_name', instance.shortName);
  writeNotNull('image', instance.image);
  writeNotNull('slug', instance.slug);
  writeNotNull('meta_description', instance.metaDescription);
  writeNotNull('meta_keywords', instance.metaKeywords);
  writeNotNull('status', instance.status);
  writeNotNull('indication', instance.indication);
  writeNotNull('pathogen', instance.pathogen);
  writeNotNull('effect', instance.effect);
  writeNotNull('stability_viability', instance.stabilityViability);
  writeNotNull('handling', instance.handling);
  writeNotNull('regulation', instance.regulation);
  writeNotNull('reference', instance.reference);
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('updated_by', instance.updatedBy);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}
