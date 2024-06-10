import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@freezed
class Region with _$Region {
  @JsonSerializable(includeIfNull: false)
  factory Region({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") dynamic type,
    @JsonKey(name: "latitude") String? latitude,
    @JsonKey(name: "longitude") String? longitude,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "country_name") String? countryName,
    @JsonKey(name: "country_name_uppercase") String? countryNameUppercase,
    @JsonKey(name: "province_id") String? provinceId,
    @JsonKey(name: "province_name") String? provinceName,
    @JsonKey(name: "regency_id") String? regencyId,
    @JsonKey(name: "regency_name") String? regencyName,
    @JsonKey(name: "district_id") dynamic districtId,
    @JsonKey(name: "district_name") dynamic districtName,
    @JsonKey(name: "village_id") dynamic villageId,
    @JsonKey(name: "village_name") dynamic villageName,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "name_translated") String? nameTranslated,
    @JsonKey(name: "country_name_translated") String? countryNameTranslated,
    @JsonKey(name: "country_name_translated_uppercase") String? countryNameTranslatedUppercase,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
