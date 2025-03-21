import 'package:intl/intl.dart';

const rfc822DatePattern = 'EEE, dd MMM yyyy HH:mm:ss Z';

const abbr = {
  "A": "+01:00",
  "ACDT": "+10:30",
  "ACST": "+09:30",
  "ADT": "-03:00",
  "AEDT": "+11:00",
  "AEST": "+10:00",
  "AFT": "+04:30",
  "AKDT": "-08:00",
  "AKST": "-09:00",
  "ALMT": "+06:00",
  "AMST": "-03:00",
  "AMT": "-04:00",
  "ANAST": "+12:00",
  "ANAT": "+12:00",
  "AQTT": "+05:00",
  "ART": "-03:00",
  "AST": "-04:00",
  "AWDT": "+09:00",
  "AWST": "+08:00",
  "AZOST": "+00:00",
  "AZOT": "-01:00",
  "AZST": "+05:00",
  "AZT": "+04:00",
  "B": "+02:00",
  "BNT": "+08:00",
  "BOT": "-04:00",
  "BRST": "-02:00",
  "BRT": "-03:00",
  "BST": "+01:00",
  "BTT": "+06:00",
  "C": "+03:00",
  "CAST": "+08:00",
  "CAT": "+02:00",
  "CCT": "+06:30",
  "CDT": "-05:00",
  "CEST": "+02:00",
  "CET": "+01:00",
  "CHADT": "+13:45",
  "CHAST": "+12:45",
  "CKT": "-10:00",
  "CLST": "-03:00",
  "CLT": "-04:00",
  "COT": "-05:00",
  "CST": "-06:00",
  "CVT": "-01:00",
  "CXT": "+07:00",
  "ChST": "+10:00",
  "D": "+04:00",
  "DAVT": "+07:00",
  "E": "+05:00",
  "EASST": "-05:00",
  "EAST": "-06:00",
  "EAT": "+03:00",
  "ECT": "-05:00",
  "EDT": "-04:00",
  "EEST": "+03:00",
  "EET": "+02:00",
  "EGST": "+00:00",
  "EGT": "-01:00",
  "EST": "-05:00",
  "ET": "-05:00",
  "F": "+06:00",
  "FJST": "+13:00",
  "FJT": "+12:00",
  "FKST": "-03:00",
  "FKT": "-04:00",
  "FNT": "-02:00",
  "G": "+07:00",
  "GALT": "-06:00",
  "GAMT": "-09:00",
  "GET": "+04:00",
  "GFT": "-03:00",
  "GILT": "+12:00",
  "GMT": "+00:00",
  "GST": "+04:00",
  "GYT": "-04:00",
  "H": "+08:00",
  "HAA": "-03:00",
  "HAC": "-05:00",
  "HADT": "-09:00",
  "HAE": "-04:00",
  "HAP": "-07:00",
  "HAR": "-06:00",
  "HAST": "-10:00",
  "HAT": "-02:30",
  "HAY": "-08:00",
  "HKT": "+08:00",
  "HLV": "-04:30",
  "HNA": "-04:00",
  "HNC": "-06:00",
  "HNE": "-05:00",
  "HNP": "-08:00",
  "HNR": "-07:00",
  "HNT": "-03:30",
  "HNY": "-09:00",
  "HOVT": "+07:00",
  "I": "+09:00",
  "ICT": "+07:00",
  "IDT": "+03:00",
  "IOT": "+06:00",
  "IRDT": "+04:30",
  "IRKST": "+09:00",
  "IRKT": "+09:00",
  "IRST": "+03:30",
  "IST": "+01:00",
  "JST": "+09:00",
  "K": "+10:00",
  "KGT": "+06:00",
  "KRAST": "+08:00",
  "KRAT": "+08:00",
  "KST": "+09:00",
  "KUYT": "+04:00",
  "L": "+11:00",
  "LHDT": "+11:00",
  "LHST": "+10:30",
  "LINT": "+14:00",
  "M": "+12:00",
  "MAGST": "+12:00",
  "MAGT": "+12:00",
  "MART": "-09:30",
  "MAWT": "+05:00",
  "MDT": "-06:00",
  "MESZ": "+02:00",
  "MEZ": "+01:00",
  "MHT": "+12:00",
  "MMT": "+06:30",
  "MSD": "+04:00",
  "MSK": "+04:00",
  "MST": "-07:00",
  "MUT": "+04:00",
  "MVT": "+05:00",
  "MYT": "+08:00",
  "N": "-01:00",
  "NCT": "+11:00",
  "NDT": "-02:30",
  "NFT": "+11:30",
  "NOVST": "+07:00",
  "NOVT": "+06:00",
  "NPT": "+05:45",
  "NST": "-03:30",
  "NUT": "-11:00",
  "NZDT": "+13:00",
  "NZST": "+12:00",
  "O": "-02:00",
  "OMSST": "+07:00",
  "OMST": "+07:00",
  "P": "-03:00",
  "PDT": "-07:00",
  "PET": "-05:00",
  "PETST": "+12:00",
  "PETT": "+12:00",
  "PGT": "+10:00",
  "PHOT": "+13:00",
  "PHT": "+08:00",
  "PKT": "+05:00",
  "PMDT": "-02:00",
  "PMST": "-03:00",
  "PONT": "+11:00",
  "PST": "-08:00",
  "PT": "-08:00",
  "PWT": "+09:00",
  "PYST": "-03:00",
  "PYT": "-04:00",
  "Q": "-04:00",
  "R": "-05:00",
  "RET": "+04:00",
  "S": "-06:00",
  "SAMT": "+04:00",
  "SAST": "+02:00",
  "SBT": "+11:00",
  "SCT": "+04:00",
  "SGT": "+08:00",
  "SRT": "-03:00",
  "SST": "-11:00",
  "T": "-07:00",
  "TAHT": "-10:00",
  "TFT": "+05:00",
  "TJT": "+05:00",
  "TKT": "+13:00",
  "TLT": "+09:00",
  "TMT": "+05:00",
  "TVT": "+12:00",
  "U": "-08:00",
  "ULAT": "+08:00",
  "UTC": "+0000",
  "UYST": "-02:00",
  "UYT": "-03:00",
  "UZT": "+05:00",
  "V": "-09:00",
  "VET": "-04:30",
  "VLAST": "+11:00",
  "VLAT": "+11:00",
  "VUT": "+11:00",
  "W": "-10:00",
  "WAST": "+02:00",
  "WAT": "+01:00",
  "WEST": "+01:00",
  "WESZ": "+01:00",
  "WET": "+0000",
  "WEZ": "+0000",
  "WFT": "+12:00",
  "WGST": "-02:00",
  "WGT": "-03:00",
  "WIB": "+07:00",
  "WIT": "+09:00",
  "WITA": "+08:00",
  "WST": "+13:00",
  "WT": "+0000",
  "X": "-11:00",
  "Y": "-12:00",
  "YAKST": "+10:00",
  "YAKT": "+10:00",
  "YAPT": "+10:00",
  "YEKST": "+06:00",
  "YEKT": "+06:00",
  "Z": "+0000",
};

String getTimezoneFromDateString(String? dateString) {
  if (dateString == null) return '';
  String timezone = dateString.split(' ').last;
  if (timezone == '+0000') timezone = 'UTC';
  return timezone;
}

DateTime? parseDateTime(dateString) {
  if (dateString == null) return null;
  return getUTCDateWithoutAbbr(dateString) ??
      _parseRfc822DateTime(dateString) ??
      _parseIso8601DateTime(dateString);
}

DateTime? getUTCDateWithoutAbbr(String dateString) {
  String? timeOffset = dateString.split(" ").last;

  if (timeOffset.contains(RegExp(r'[A-Z]'))) {
    final abbOffset = abbr[timeOffset];
    if (abbOffset != null) {
      timeOffset = abbOffset;
    }
  }
  final localDate = DateFormat(rfc822DatePattern).parse(dateString).toLocal();

  return DateTime.parse('$localDate${timeOffset}');
}

DateTime? _parseRfc822DateTime(String dateString) {
  try {
    final num? length = dateString.length.clamp(0, rfc822DatePattern.length);
    final trimmedPattern = rfc822DatePattern.substring(
        0,
        length
            as int?); //Some feeds use a shortened RFC 822 date, e.g. 'Tue, 04 Aug 2020'
    final format = DateFormat(trimmedPattern, 'en_US');
    return format.parse(dateString);
  } on FormatException {
    return null;
  }
}

DateTime? _parseIso8601DateTime(dateString) {
  try {
    return DateTime.parse(dateString);
  } on FormatException {
    return null;
  }
}
