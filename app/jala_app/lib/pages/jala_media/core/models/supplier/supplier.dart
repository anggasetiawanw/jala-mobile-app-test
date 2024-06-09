import 'package:freezed_annotation/freezed_annotation.dart';

import '../creator/creator.dart';
import '../region/region.dart';

part 'supplier.freezed.dart';
part 'supplier.g.dart';

@freezed
class Supplier with _$Supplier {
  @JsonSerializable(includeIfNull: false)
  factory Supplier({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "species_id") int? speciesId,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "size_20") int? size20,
    @JsonKey(name: "size_30") int? size30,
    @JsonKey(name: "size_40") int? size40,
    @JsonKey(name: "size_50") int? size50,
    @JsonKey(name: "size_60") int? size60,
    @JsonKey(name: "size_70") int? size70,
    @JsonKey(name: "size_80") int? size80,
    @JsonKey(name: "size_90") int? size90,
    @JsonKey(name: "size_100") int? size100,
    @JsonKey(name: "size_110") int? size110,
    @JsonKey(name: "size_120") int? size120,
    @JsonKey(name: "size_130") int? size130,
    @JsonKey(name: "size_140") int? size140,
    @JsonKey(name: "size_150") int? size150,
    @JsonKey(name: "size_160") int? size160,
    @JsonKey(name: "size_170") int? size170,
    @JsonKey(name: "size_180") int? size180,
    @JsonKey(name: "size_190") int? size190,
    @JsonKey(name: "size_200") int? size200,
    @JsonKey(name: "remark") String? remark,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "region_id") String? regionId,
    @JsonKey(name: "contact") String? contact,
    @JsonKey(name: "country_id") String? countryId,
    @JsonKey(name: "currency_id") String? currencyId,
    @JsonKey(name: "private") dynamic private,
    @JsonKey(name: "week") int? week,
    @JsonKey(name: "date_region_full_name") String? dateRegionFullName,
    @JsonKey(name: "province_id") String? provinceId,
    @JsonKey(name: "regency_id") String? regencyId,
    @JsonKey(name: "district_id") dynamic districtId,
    @JsonKey(name: "village_id") dynamic villageId,
    @JsonKey(name: "region") Region? region,
    @JsonKey(name: "creator") Creator? creator,
  }) = _Supplier;

  factory Supplier.fromJson(Map<String, dynamic> json) => _$SupplierFromJson(json);
}
