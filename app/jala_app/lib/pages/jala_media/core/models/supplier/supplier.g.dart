// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupplierImpl _$$SupplierImplFromJson(Map<String, dynamic> json) =>
    _$SupplierImpl(
      id: (json['id'] as num?)?.toInt(),
      speciesId: (json['species_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      size20: (json['size_20'] as num?)?.toInt(),
      size30: (json['size_30'] as num?)?.toInt(),
      size40: (json['size_40'] as num?)?.toInt(),
      size50: (json['size_50'] as num?)?.toInt(),
      size60: (json['size_60'] as num?)?.toInt(),
      size70: (json['size_70'] as num?)?.toInt(),
      size80: (json['size_80'] as num?)?.toInt(),
      size90: (json['size_90'] as num?)?.toInt(),
      size100: (json['size_100'] as num?)?.toInt(),
      size110: (json['size_110'] as num?)?.toInt(),
      size120: (json['size_120'] as num?)?.toInt(),
      size130: (json['size_130'] as num?)?.toInt(),
      size140: (json['size_140'] as num?)?.toInt(),
      size150: (json['size_150'] as num?)?.toInt(),
      size160: (json['size_160'] as num?)?.toInt(),
      size170: (json['size_170'] as num?)?.toInt(),
      size180: (json['size_180'] as num?)?.toInt(),
      size190: (json['size_190'] as num?)?.toInt(),
      size200: (json['size_200'] as num?)?.toInt(),
      remark: json['remark'] as String?,
      createdBy: (json['created_by'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      regionId: json['region_id'] as String?,
      contact: json['contact'] as String?,
      countryId: json['country_id'] as String?,
      currencyId: json['currency_id'] as String?,
      private: json['private'],
      week: (json['week'] as num?)?.toInt(),
      dateRegionFullName: json['date_region_full_name'] as String?,
      provinceId: json['province_id'] as String?,
      regencyId: json['regency_id'] as String?,
      districtId: json['district_id'],
      villageId: json['village_id'],
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      creator: json['creator'] == null
          ? null
          : Creator.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupplierImplToJson(_$SupplierImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('species_id', instance.speciesId);
  writeNotNull('date', instance.date);
  writeNotNull('size_20', instance.size20);
  writeNotNull('size_30', instance.size30);
  writeNotNull('size_40', instance.size40);
  writeNotNull('size_50', instance.size50);
  writeNotNull('size_60', instance.size60);
  writeNotNull('size_70', instance.size70);
  writeNotNull('size_80', instance.size80);
  writeNotNull('size_90', instance.size90);
  writeNotNull('size_100', instance.size100);
  writeNotNull('size_110', instance.size110);
  writeNotNull('size_120', instance.size120);
  writeNotNull('size_130', instance.size130);
  writeNotNull('size_140', instance.size140);
  writeNotNull('size_150', instance.size150);
  writeNotNull('size_160', instance.size160);
  writeNotNull('size_170', instance.size170);
  writeNotNull('size_180', instance.size180);
  writeNotNull('size_190', instance.size190);
  writeNotNull('size_200', instance.size200);
  writeNotNull('remark', instance.remark);
  writeNotNull('created_by', instance.createdBy);
  writeNotNull('updated_by', instance.updatedBy);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('contact', instance.contact);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('private', instance.private);
  writeNotNull('week', instance.week);
  writeNotNull('date_region_full_name', instance.dateRegionFullName);
  writeNotNull('province_id', instance.provinceId);
  writeNotNull('regency_id', instance.regencyId);
  writeNotNull('district_id', instance.districtId);
  writeNotNull('village_id', instance.villageId);
  writeNotNull('region', instance.region);
  writeNotNull('creator', instance.creator);
  return val;
}
