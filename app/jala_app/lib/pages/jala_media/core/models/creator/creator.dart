import 'package:freezed_annotation/freezed_annotation.dart';

part 'creator.freezed.dart';
part 'creator.g.dart';

@freezed
class Creator with _$Creator {
  @JsonSerializable(includeIfNull: false)
  factory Creator({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "role_id") int? roleId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "email_verified") bool? emailVerified,
    @JsonKey(name: "subscription_type_id") int? subscriptionTypeId,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "region_id") String? regionId,
    @JsonKey(name: "address") dynamic address,
    @JsonKey(name: "last_login_at") String? lastLoginAt,
    @JsonKey(name: "deactivated") dynamic deactivated,
    @JsonKey(name: "expired_at") String? expiredAt,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "phone_verified") bool? phoneVerified,
    @JsonKey(name: "gender") int? gender,
    @JsonKey(name: "occupation") String? occupation,
    @JsonKey(name: "id_number") dynamic idNumber,
    @JsonKey(name: "id_scan") dynamic idScan,
    @JsonKey(name: "tin_number") dynamic tinNumber,
    @JsonKey(name: "tin_scan") dynamic tinScan,
    @JsonKey(name: "birthdate") String? birthdate,
    @JsonKey(name: "company") dynamic company,
    @JsonKey(name: "company_address") dynamic companyAddress,
    @JsonKey(name: "position") dynamic position,
    @JsonKey(name: "monthly_income") dynamic monthlyIncome,
    @JsonKey(name: "income_source") dynamic incomeSource,
    @JsonKey(name: "buyer") dynamic buyer,
    @JsonKey(name: "phone_country") String? phoneCountry,
    @JsonKey(name: "country") dynamic country,
    @JsonKey(name: "interest") String? interest,
    @JsonKey(name: "unsubscribe_email_at") dynamic unsubscribeEmailAt,
    @JsonKey(name: "freshchat_restore_id") dynamic freshchatRestoreId,
    @JsonKey(name: "allow_create_client") dynamic allowCreateClient,
    @JsonKey(name: "allow_create_token") dynamic allowCreateToken,
    @JsonKey(name: "interests") List<String>? interests,
    // @JsonKey(name: "state") StateSupplier? state,
    @JsonKey(name: "family_card_number") dynamic familyCardNumber,
    @JsonKey(name: "family_card_scan") dynamic familyCardScan,
    @JsonKey(name: "telegram_id") dynamic telegramId,
    @JsonKey(name: "gender_name") String? genderName,
    @JsonKey(name: "expired_date") dynamic expiredDate,
    @JsonKey(name: "expired_time") dynamic expiredTime,
    @JsonKey(name: "upcoming_birthdate") String? upcomingBirthdate,
  }) = _Creator;

  factory Creator.fromJson(Map<String, dynamic> json) => _$CreatorFromJson(json);
}
