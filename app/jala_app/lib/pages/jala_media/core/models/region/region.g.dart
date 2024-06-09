// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'],
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      countryId: json['country_id'] as String?,
      countryName: json['country_name'] as String?,
      countryNameUppercase: json['country_name_uppercase'] as String?,
      provinceId: json['province_id'] as String?,
      provinceName: json['province_name'] as String?,
      regencyId: json['regency_id'] as String?,
      regencyName: json['regency_name'] as String?,
      districtId: json['district_id'],
      districtName: json['district_name'],
      villageId: json['village_id'],
      villageName: json['village_name'],
      fullName: json['full_name'] as String?,
      nameTranslated: json['name_translated'] as String?,
      countryNameTranslated: json['country_name_translated'] as String?,
      countryNameTranslatedUppercase:
          json['country_name_translated_uppercase'] as String?,
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('country_name_uppercase', instance.countryNameUppercase);
  writeNotNull('province_id', instance.provinceId);
  writeNotNull('province_name', instance.provinceName);
  writeNotNull('regency_id', instance.regencyId);
  writeNotNull('regency_name', instance.regencyName);
  writeNotNull('district_id', instance.districtId);
  writeNotNull('district_name', instance.districtName);
  writeNotNull('village_id', instance.villageId);
  writeNotNull('village_name', instance.villageName);
  writeNotNull('full_name', instance.fullName);
  writeNotNull('name_translated', instance.nameTranslated);
  writeNotNull('country_name_translated', instance.countryNameTranslated);
  writeNotNull('country_name_translated_uppercase',
      instance.countryNameTranslatedUppercase);
  return val;
}
