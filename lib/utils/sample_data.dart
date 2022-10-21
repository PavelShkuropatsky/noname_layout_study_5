import 'package:noname_layout_study_5/utils/custom_functions.dart';

class RealEstate {
  final String image;
  final num amount;
  final String address;
  final int bedrooms;
  final int bathrooms;
  final int area;
  final int garage;
  final String description;
  final DateTime postDate;
  bool favorite;

  RealEstate({required this.image,
    required this.amount,
    required this.address,
    required this.bedrooms,
    required this.bathrooms,
    required this.area,
    required this.garage,
    required this.description,
    required this.postDate,
    this.favorite = false});

  String get amountStr => formatCurrency(amount);

  String get postAgeStr {
    switch (_postAgeAbbreviationType)
    {
      case _AgeAbbreviationType.year: return _yearPostAgeStr;
      case _AgeAbbreviationType.month: return _monthPostAgeStr;
      case _AgeAbbreviationType.week: return _weekPostAgeStr;
      case _AgeAbbreviationType.day: return _dayPostAgeStr;
      case _AgeAbbreviationType.hour: return _hourPostAgeStr;
      case _AgeAbbreviationType.minute: return _minutePostAgeStr;
      default: return _secondPostAgeStr;
    }
  }

  String get _yearPostAgeStr => "${(_postDuration.inDays/365).round()} Years ago";
  String get _monthPostAgeStr => "${(_postDuration.inDays/31).round()} Months ago";
  String get _weekPostAgeStr => "${(_postDuration.inDays/7).round()} Weeks ago";
  String get _dayPostAgeStr => "${_postDuration.inDays} Days ago";
  String get _hourPostAgeStr => "${_postDuration.inHours} Hour ago";
  String get _minutePostAgeStr => "${_postDuration.inMinutes} Minutes ago";
  String get _secondPostAgeStr => "${_postDuration.inSeconds} Seconds ago";

  _AgeAbbreviationType get _postAgeAbbreviationType {
    var postDuration = _postDuration;
    if (postDuration.inDays >= 365) return _AgeAbbreviationType.year;
    if (postDuration.inDays >= 31) return _AgeAbbreviationType.month;
    if (postDuration.inDays >= 7) return _AgeAbbreviationType.week;
    if (postDuration.inHours >= 24) return _AgeAbbreviationType.day;
    if (postDuration.inMinutes >= 60) return _AgeAbbreviationType.hour;
    if (postDuration.inSeconds >= 60) return _AgeAbbreviationType.minute;

    return _AgeAbbreviationType.second;
  }

  Duration get _postDuration {
    var nowDate = DateTime.now();
    if (!postDate.isBefore(nowDate)) return Duration.zero;

    return Duration(seconds: nowDate.difference(postDate).inSeconds);
  }

  static final realEstates = [
    RealEstate(
      image: "assets/images/image_2.jpg",
      amount: 200000,
      address: "603 Andover St, SF",
      bedrooms: 4,
      bathrooms: 2,
      area: 1416,
      garage: 1,
      postDate: DateTime.now().subtract(const Duration(seconds: 5)),
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
          "It has survived not only five centuries, but also the leap into electronic typesetting, "
          "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
          "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
          "Aldus PageMaker including versions of Lorem Ipsum.",
    ),
    RealEstate(
      image: "assets/images/image_1.jpg",
      amount: 140000,
      address: "2666 Hyde St, SF",
      bedrooms: 4,
      bathrooms: 2,
      area: 1416,
      garage: 1,
      postDate: DateTime.now().subtract(const Duration(minutes: 7)),
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
          "It has survived not only five centuries, but also the leap into electronic typesetting, "
          "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
          "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
          "Aldus PageMaker including versions of Lorem Ipsum.",
      favorite: true,
    ),
    RealEstate(
      image: "assets/images/image_3.jpg",
      amount: 600000,
      address: "61 Colby St, SF",
      bedrooms: 4,
      bathrooms: 2,
      area: 2416,
      garage: 1,
      postDate: DateTime.now().subtract(const Duration(hours: 2, minutes: 10)),
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
          "It has survived not only five centuries, but also the leap into electronic typesetting, "
          "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
          "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
          "Aldus PageMaker including versions of Lorem Ipsum.",
    ),
    RealEstate(
      image: "assets/images/image_4.jpg",
      amount: 1500000,
      address: "2665 Newhall St, SF",
      bedrooms: 4,
      bathrooms: 2,
      area: 1416,
      garage: 1,
      postDate: DateTime.now().subtract(const Duration(days: 15)),
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
          "It has survived not only five centuries, but also the leap into electronic typesetting, "
          "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
          "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
          "Aldus PageMaker including versions of Lorem Ipsum.",
    ),
    RealEstate(
      image: "assets/images/image_5.jpg",
      amount: 900000,
      address: "1035 Revere Ave, SF",
      bedrooms: 4,
      bathrooms: 2,
      area: 1416,
      garage: 1,
      postDate: DateTime.now().subtract(const Duration(days: 100)),
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
          "It has survived not only five centuries, but also the leap into electronic typesetting, "
          "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
          "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
          "Aldus PageMaker including versions of Lorem Ipsum.",
    ),
    RealEstate(
      image: "assets/images/image_6.jpg",
      amount: 1400000,
      address: "3733 Taraval St, SF",
      bedrooms: 4,
      bathrooms: 2,
      area: 1416,
      garage: 1,
      postDate: DateTime.now().subtract(const Duration(days: 2000)),
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
          "It has survived not only five centuries, but also the leap into electronic typesetting, "
          "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
          "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like "
          "Aldus PageMaker including versions of Lorem Ipsum.",
    ),
  ];
}

const choiceOptions = [
  "<\$220,000",
  "For Sale",
  "1-2 Beds",
  "3-4 Beds",
  ">1000sqft",
  "<=1000sqft",
];

enum _AgeAbbreviationType { second, minute, hour, day, week, month, year }
