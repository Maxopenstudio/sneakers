
class AddressResponse {
  final String addressId;
  final List<Address> addresses;

  AddressResponse({required this.addressId, required this.addresses});

  factory AddressResponse.fromJson(Map<String, dynamic> json) {
    return AddressResponse(
      addressId: json['address_id'] ?? '',
      addresses: (json['addresses'] as List)
          .map((address) => Address.fromJson(address))
          .toList(),
    );
  }
}

class Address {
  final String addressId;
  final String firstName;
  final String lastName;
  final String company;
  final String address1;
  final String address2;
  final String postcode;
  final String city;
  final String zoneId;
  final String zone;
  final String zoneCode;
  final String countryId;
  final String country;
  final String isoCode2;
  final String isoCode3;
  final String addressFormat;
  final List<dynamic> customField;

  Address({
    required this.addressId,
    required this.firstName,
    required this.lastName,
    required this.company,
    required this.address1,
    required this.address2,
    required this.postcode,
    required this.city,
    required this.zoneId,
    required this.zone,
    required this.zoneCode,
    required this.countryId,
    required this.country,
    required this.isoCode2,
    required this.isoCode3,
    required this.addressFormat,
    required this.customField,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      addressId: json['address_id'] ?? '',
      firstName: json['firstname'] ?? '',
      lastName: json['lastname'] ?? '',
      company: json['company'] ?? '',
      address1: json['address_1'] ?? '',
      address2: json['address_2'] ?? '',
      postcode: json['postcode'] ?? '',
      city: json['city'] ?? '',
      zoneId: json['zone_id'] ?? '',
      zone: json['zone'] ?? '',
      zoneCode: json['zone_code'] ?? '',
      countryId: json['country_id'] ?? '',
      country: json['country'] ?? '',
      isoCode2: json['iso_code_2'] ?? '',
      isoCode3: json['iso_code_3'] ?? '',
      addressFormat: json['address_format'] ?? '',
      customField: json['custom_field'] ?? [],
    );
  }
}

class Country implements Named {
  final int countryId;
  final String name;
  final String isoCode2;
  final String isoCode3;
  final String addressFormat;
  final String postcodeRequired;
  final String status;

  Country({
    required this.countryId,
    required this.name,
    required this.isoCode2,
    required this.isoCode3,
    required this.addressFormat,
    required this.postcodeRequired,
    required this.status,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      countryId: json['country_id'] ?? 0,
      name: json['name'] ?? '',
      isoCode2: json['iso_code_2'] ?? '',
      isoCode3: json['iso_code_3'] ?? '',
      addressFormat: json['address_format'] ?? '',
      postcodeRequired: json['postcode_required'] ?? '',
      status: json['status'] ?? '',
    );
  }

  static List<Country> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((country) => Country.fromJson(country)).toList();
  }

  @override
  String get named => name;
}

abstract class Named{
  String get named;
}

class CountryZone implements Named {
  final int countryId;
  final String name;
  final String isoCode2;
  final String isoCode3;
  final String addressFormat;
  final String postcodeRequired;
  final String status;
  final List<Zone> zones;

  CountryZone({
    required this.countryId,
    required this.name,
    required this.isoCode2,
    required this.isoCode3,
    required this.addressFormat,
    required this.postcodeRequired,
    required this.status,
    required this.zones,
  });

  factory CountryZone.fromJson(Map<String, dynamic> json) {
    return CountryZone(
      countryId: json['country_id'] ?? 0,
      name: json['name'] ?? '',
      isoCode2: json['iso_code_2'] ?? '',
      isoCode3: json['iso_code_3'] ?? '',
      addressFormat: json['address_format'] ?? '',
      postcodeRequired: json['postcode_required'] ?? '',
      status: json['status'] ?? '',
      zones: Zone.listFromJson(json['zone']),
    );
  }

  @override
  String get named => name;
}

class Zone {
  final String zoneId;
  final String countryId;
  final String name;
  final String code;
  final String status;

  Zone({
    required this.zoneId,
    required this.countryId,
    required this.name,
    required this.code,
    required this.status,
  });

  factory Zone.fromJson(Map<String, dynamic> json) {
    return Zone(
      zoneId: json['zone_id'] ?? '',
      countryId: json['country_id'] ?? '',
      name: json['name'] ?? '',
      code: json['code'] ?? '',
      status: json['status'] ?? '',
    );
  }

  static List<Zone> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((zone) => Zone.fromJson(zone)).toList();
  }
}
