// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatorImpl _$$CreatorImplFromJson(Map<String, dynamic> json) =>
    _$CreatorImpl(
      id: (json['id'] as num?)?.toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      emailVerified: json['email_verified'] as bool?,
      subscriptionTypeId: (json['subscription_type_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      regionId: json['region_id'] as String?,
      address: json['address'],
      lastLoginAt: json['last_login_at'] as String?,
      deactivated: json['deactivated'],
      expiredAt: json['expired_at'] as String?,
      phone: json['phone'] as String?,
      phoneVerified: json['phone_verified'] as bool?,
      gender: (json['gender'] as num?)?.toInt(),
      occupation: json['occupation'] as String?,
      idNumber: json['id_number'],
      idScan: json['id_scan'],
      tinNumber: json['tin_number'],
      tinScan: json['tin_scan'],
      birthdate: json['birthdate'] as String?,
      company: json['company'],
      companyAddress: json['company_address'],
      position: json['position'],
      monthlyIncome: json['monthly_income'],
      incomeSource: json['income_source'],
      buyer: json['buyer'],
      phoneCountry: json['phone_country'] as String?,
      country: json['country'],
      interest: json['interest'] as String?,
      unsubscribeEmailAt: json['unsubscribe_email_at'],
      freshchatRestoreId: json['freshchat_restore_id'],
      allowCreateClient: json['allow_create_client'],
      allowCreateToken: json['allow_create_token'],
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      familyCardNumber: json['family_card_number'],
      familyCardScan: json['family_card_scan'],
      telegramId: json['telegram_id'],
      genderName: json['gender_name'] as String?,
      expiredDate: json['expired_date'],
      expiredTime: json['expired_time'],
      upcomingBirthdate: json['upcoming_birthdate'] as String?,
    );

Map<String, dynamic> _$$CreatorImplToJson(_$CreatorImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('role_id', instance.roleId);
  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('email_verified', instance.emailVerified);
  writeNotNull('subscription_type_id', instance.subscriptionTypeId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('region_id', instance.regionId);
  writeNotNull('address', instance.address);
  writeNotNull('last_login_at', instance.lastLoginAt);
  writeNotNull('deactivated', instance.deactivated);
  writeNotNull('expired_at', instance.expiredAt);
  writeNotNull('phone', instance.phone);
  writeNotNull('phone_verified', instance.phoneVerified);
  writeNotNull('gender', instance.gender);
  writeNotNull('occupation', instance.occupation);
  writeNotNull('id_number', instance.idNumber);
  writeNotNull('id_scan', instance.idScan);
  writeNotNull('tin_number', instance.tinNumber);
  writeNotNull('tin_scan', instance.tinScan);
  writeNotNull('birthdate', instance.birthdate);
  writeNotNull('company', instance.company);
  writeNotNull('company_address', instance.companyAddress);
  writeNotNull('position', instance.position);
  writeNotNull('monthly_income', instance.monthlyIncome);
  writeNotNull('income_source', instance.incomeSource);
  writeNotNull('buyer', instance.buyer);
  writeNotNull('phone_country', instance.phoneCountry);
  writeNotNull('country', instance.country);
  writeNotNull('interest', instance.interest);
  writeNotNull('unsubscribe_email_at', instance.unsubscribeEmailAt);
  writeNotNull('freshchat_restore_id', instance.freshchatRestoreId);
  writeNotNull('allow_create_client', instance.allowCreateClient);
  writeNotNull('allow_create_token', instance.allowCreateToken);
  writeNotNull('interests', instance.interests);
  writeNotNull('family_card_number', instance.familyCardNumber);
  writeNotNull('family_card_scan', instance.familyCardScan);
  writeNotNull('telegram_id', instance.telegramId);
  writeNotNull('gender_name', instance.genderName);
  writeNotNull('expired_date', instance.expiredDate);
  writeNotNull('expired_time', instance.expiredTime);
  writeNotNull('upcoming_birthdate', instance.upcomingBirthdate);
  return val;
}
