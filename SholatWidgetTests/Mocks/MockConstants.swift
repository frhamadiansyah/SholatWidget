//
//  MockConstants.swift
//  SholatWidgetTests
//
//  Created by Fandrian Rhamadiansyah on 20/08/21.
//

// swiftlint:disable type_body_length file_length

import Foundation

struct MockConstants {
    
    static let mockResponse = """
                {
                    "code": 200,
                    "status": "OK",
                    "data": [
                        {
                            "timings": {
                                "Fajr": "04:09 (BST)",
                                "Sunrise": "06:14 (BST)",
                                "Dhuhr": "13:00 (BST)",
                                "Asr": "16:44 (BST)",
                                "Sunset": "19:46 (BST)",
                                "Maghrib": "19:46 (BST)",
                                "Isha": "21:42 (BST)",
                                "Imsak": "03:59 (BST)",
                                "Midnight": "01:00 (BST)"
                            },
                            "date": {
                                "readable": "01 Sep 2020",
                                "timestamp": "1598947261",
                                "gregorian": {
                                    "date": "01-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "01",
                                    "weekday": {
                                        "en": "Tuesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "13-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "13",
                                    "weekday": {
                                        "en": "Al Thalaata",
                                        "ar": "الثلاثاء"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:11 (BST)",
                                "Sunrise": "06:15 (BST)",
                                "Dhuhr": "13:00 (BST)",
                                "Asr": "16:42 (BST)",
                                "Sunset": "19:44 (BST)",
                                "Maghrib": "19:44 (BST)",
                                "Isha": "21:39 (BST)",
                                "Imsak": "04:01 (BST)",
                                "Midnight": "01:00 (BST)"
                            },
                            "date": {
                                "readable": "02 Sep 2020",
                                "timestamp": "1599033661",
                                "gregorian": {
                                    "date": "02-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "02",
                                    "weekday": {
                                        "en": "Wednesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "14-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "14",
                                    "weekday": {
                                        "en": "Al Arba'a",
                                        "ar": "الاربعاء"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:14 (BST)",
                                "Sunrise": "06:17 (BST)",
                                "Dhuhr": "13:00 (BST)",
                                "Asr": "16:41 (BST)",
                                "Sunset": "19:42 (BST)",
                                "Maghrib": "19:42 (BST)",
                                "Isha": "21:36 (BST)",
                                "Imsak": "04:04 (BST)",
                                "Midnight": "00:59 (BST)"
                            },
                            "date": {
                                "readable": "03 Sep 2020",
                                "timestamp": "1599120061",
                                "gregorian": {
                                    "date": "03-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "03",
                                    "weekday": {
                                        "en": "Thursday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "15-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "15",
                                    "weekday": {
                                        "en": "Al Khamees",
                                        "ar": "الخميس"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:16 (BST)",
                                "Sunrise": "06:18 (BST)",
                                "Dhuhr": "12:59 (BST)",
                                "Asr": "16:39 (BST)",
                                "Sunset": "19:39 (BST)",
                                "Maghrib": "19:39 (BST)",
                                "Isha": "21:34 (BST)",
                                "Imsak": "04:06 (BST)",
                                "Midnight": "00:59 (BST)"
                            },
                            "date": {
                                "readable": "04 Sep 2020",
                                "timestamp": "1599206461",
                                "gregorian": {
                                    "date": "04-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "04",
                                    "weekday": {
                                        "en": "Friday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "16-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "16",
                                    "weekday": {
                                        "en": "Al Juma'a",
                                        "ar": "الجمعة"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:18 (BST)",
                                "Sunrise": "06:20 (BST)",
                                "Dhuhr": "12:59 (BST)",
                                "Asr": "16:38 (BST)",
                                "Sunset": "19:37 (BST)",
                                "Maghrib": "19:37 (BST)",
                                "Isha": "21:31 (BST)",
                                "Imsak": "04:08 (BST)",
                                "Midnight": "00:59 (BST)"
                            },
                            "date": {
                                "readable": "05 Sep 2020",
                                "timestamp": "1599292861",
                                "gregorian": {
                                    "date": "05-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "05",
                                    "weekday": {
                                        "en": "Saturday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "17-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "17",
                                    "weekday": {
                                        "en": "Al Sabt",
                                        "ar": "السبت"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:20 (BST)",
                                "Sunrise": "06:22 (BST)",
                                "Dhuhr": "12:59 (BST)",
                                "Asr": "16:36 (BST)",
                                "Sunset": "19:35 (BST)",
                                "Maghrib": "19:35 (BST)",
                                "Isha": "21:28 (BST)",
                                "Imsak": "04:10 (BST)",
                                "Midnight": "00:58 (BST)"
                            },
                            "date": {
                                "readable": "06 Sep 2020",
                                "timestamp": "1599379261",
                                "gregorian": {
                                    "date": "06-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "06",
                                    "weekday": {
                                        "en": "Sunday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "18-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "18",
                                    "weekday": {
                                        "en": "Al Ahad",
                                        "ar": "الاحد"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:23 (BST)",
                                "Sunrise": "06:23 (BST)",
                                "Dhuhr": "12:58 (BST)",
                                "Asr": "16:35 (BST)",
                                "Sunset": "19:32 (BST)",
                                "Maghrib": "19:32 (BST)",
                                "Isha": "21:25 (BST)",
                                "Imsak": "04:13 (BST)",
                                "Midnight": "00:58 (BST)"
                            },
                            "date": {
                                "readable": "07 Sep 2020",
                                "timestamp": "1599465661",
                                "gregorian": {
                                    "date": "07-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "07",
                                    "weekday": {
                                        "en": "Monday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "19-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "19",
                                    "weekday": {
                                        "en": "Al Athnayn",
                                        "ar": "الاثنين"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:25 (BST)",
                                "Sunrise": "06:25 (BST)",
                                "Dhuhr": "12:58 (BST)",
                                "Asr": "16:33 (BST)",
                                "Sunset": "19:30 (BST)",
                                "Maghrib": "19:30 (BST)",
                                "Isha": "21:22 (BST)",
                                "Imsak": "04:15 (BST)",
                                "Midnight": "00:58 (BST)"
                            },
                            "date": {
                                "readable": "08 Sep 2020",
                                "timestamp": "1599552061",
                                "gregorian": {
                                    "date": "08-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "08",
                                    "weekday": {
                                        "en": "Tuesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "20-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "20",
                                    "weekday": {
                                        "en": "Al Thalaata",
                                        "ar": "الثلاثاء"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:27 (BST)",
                                "Sunrise": "06:26 (BST)",
                                "Dhuhr": "12:58 (BST)",
                                "Asr": "16:32 (BST)",
                                "Sunset": "19:28 (BST)",
                                "Maghrib": "19:28 (BST)",
                                "Isha": "21:19 (BST)",
                                "Imsak": "04:17 (BST)",
                                "Midnight": "00:57 (BST)"
                            },
                            "date": {
                                "readable": "09 Sep 2020",
                                "timestamp": "1599638461",
                                "gregorian": {
                                    "date": "09-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "09",
                                    "weekday": {
                                        "en": "Wednesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "21-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "21",
                                    "weekday": {
                                        "en": "Al Arba'a",
                                        "ar": "الاربعاء"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:29 (BST)",
                                "Sunrise": "06:28 (BST)",
                                "Dhuhr": "12:57 (BST)",
                                "Asr": "16:30 (BST)",
                                "Sunset": "19:26 (BST)",
                                "Maghrib": "19:26 (BST)",
                                "Isha": "21:17 (BST)",
                                "Imsak": "04:19 (BST)",
                                "Midnight": "00:57 (BST)"
                            },
                            "date": {
                                "readable": "10 Sep 2020",
                                "timestamp": "1599724861",
                                "gregorian": {
                                    "date": "10-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "10",
                                    "weekday": {
                                        "en": "Thursday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "22-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "22",
                                    "weekday": {
                                        "en": "Al Khamees",
                                        "ar": "الخميس"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:31 (BST)",
                                "Sunrise": "06:30 (BST)",
                                "Dhuhr": "12:57 (BST)",
                                "Asr": "16:29 (BST)",
                                "Sunset": "19:23 (BST)",
                                "Maghrib": "19:23 (BST)",
                                "Isha": "21:14 (BST)",
                                "Imsak": "04:21 (BST)",
                                "Midnight": "00:56 (BST)"
                            },
                            "date": {
                                "readable": "11 Sep 2020",
                                "timestamp": "1599811261",
                                "gregorian": {
                                    "date": "11-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "11",
                                    "weekday": {
                                        "en": "Friday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "23-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "23",
                                    "weekday": {
                                        "en": "Al Juma'a",
                                        "ar": "الجمعة"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:33 (BST)",
                                "Sunrise": "06:31 (BST)",
                                "Dhuhr": "12:57 (BST)",
                                "Asr": "16:27 (BST)",
                                "Sunset": "19:21 (BST)",
                                "Maghrib": "19:21 (BST)",
                                "Isha": "21:11 (BST)",
                                "Imsak": "04:23 (BST)",
                                "Midnight": "00:56 (BST)"
                            },
                            "date": {
                                "readable": "12 Sep 2020",
                                "timestamp": "1599897661",
                                "gregorian": {
                                    "date": "12-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "12",
                                    "weekday": {
                                        "en": "Saturday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "24-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "24",
                                    "weekday": {
                                        "en": "Al Sabt",
                                        "ar": "السبت"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:35 (BST)",
                                "Sunrise": "06:33 (BST)",
                                "Dhuhr": "12:56 (BST)",
                                "Asr": "16:26 (BST)",
                                "Sunset": "19:19 (BST)",
                                "Maghrib": "19:19 (BST)",
                                "Isha": "21:08 (BST)",
                                "Imsak": "04:25 (BST)",
                                "Midnight": "00:56 (BST)"
                            },
                            "date": {
                                "readable": "13 Sep 2020",
                                "timestamp": "1599984061",
                                "gregorian": {
                                    "date": "13-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "13",
                                    "weekday": {
                                        "en": "Sunday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "25-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "25",
                                    "weekday": {
                                        "en": "Al Ahad",
                                        "ar": "الاحد"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:37 (BST)",
                                "Sunrise": "06:34 (BST)",
                                "Dhuhr": "12:56 (BST)",
                                "Asr": "16:24 (BST)",
                                "Sunset": "19:16 (BST)",
                                "Maghrib": "19:16 (BST)",
                                "Isha": "21:06 (BST)",
                                "Imsak": "04:27 (BST)",
                                "Midnight": "00:55 (BST)"
                            },
                            "date": {
                                "readable": "14 Sep 2020",
                                "timestamp": "1600070461",
                                "gregorian": {
                                    "date": "14-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "14",
                                    "weekday": {
                                        "en": "Monday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "26-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "26",
                                    "weekday": {
                                        "en": "Al Athnayn",
                                        "ar": "الاثنين"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:40 (BST)",
                                "Sunrise": "06:36 (BST)",
                                "Dhuhr": "12:56 (BST)",
                                "Asr": "16:23 (BST)",
                                "Sunset": "19:14 (BST)",
                                "Maghrib": "19:14 (BST)",
                                "Isha": "21:03 (BST)",
                                "Imsak": "04:30 (BST)",
                                "Midnight": "00:55 (BST)"
                            },
                            "date": {
                                "readable": "15 Sep 2020",
                                "timestamp": "1600156861",
                                "gregorian": {
                                    "date": "15-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "15",
                                    "weekday": {
                                        "en": "Tuesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "27-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "27",
                                    "weekday": {
                                        "en": "Al Thalaata",
                                        "ar": "الثلاثاء"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:42 (BST)",
                                "Sunrise": "06:38 (BST)",
                                "Dhuhr": "12:55 (BST)",
                                "Asr": "16:21 (BST)",
                                "Sunset": "19:12 (BST)",
                                "Maghrib": "19:12 (BST)",
                                "Isha": "21:00 (BST)",
                                "Imsak": "04:32 (BST)",
                                "Midnight": "00:55 (BST)"
                            },
                            "date": {
                                "readable": "16 Sep 2020",
                                "timestamp": "1600243261",
                                "gregorian": {
                                    "date": "16-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "16",
                                    "weekday": {
                                        "en": "Wednesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "28-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "28",
                                    "weekday": {
                                        "en": "Al Arba'a",
                                        "ar": "الاربعاء"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:44 (BST)",
                                "Sunrise": "06:39 (BST)",
                                "Dhuhr": "12:55 (BST)",
                                "Asr": "16:19 (BST)",
                                "Sunset": "19:09 (BST)",
                                "Maghrib": "19:09 (BST)",
                                "Isha": "20:58 (BST)",
                                "Imsak": "04:34 (BST)",
                                "Midnight": "00:54 (BST)"
                            },
                            "date": {
                                "readable": "17 Sep 2020",
                                "timestamp": "1600329661",
                                "gregorian": {
                                    "date": "17-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "17",
                                    "weekday": {
                                        "en": "Thursday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "29-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "29",
                                    "weekday": {
                                        "en": "Al Khamees",
                                        "ar": "الخميس"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:46 (BST)",
                                "Sunrise": "06:41 (BST)",
                                "Dhuhr": "12:54 (BST)",
                                "Asr": "16:18 (BST)",
                                "Sunset": "19:07 (BST)",
                                "Maghrib": "19:07 (BST)",
                                "Isha": "20:55 (BST)",
                                "Imsak": "04:36 (BST)",
                                "Midnight": "00:54 (BST)"
                            },
                            "date": {
                                "readable": "18 Sep 2020",
                                "timestamp": "1600416061",
                                "gregorian": {
                                    "date": "18-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "18",
                                    "weekday": {
                                        "en": "Friday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "30-01-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "30",
                                    "weekday": {
                                        "en": "Al Juma'a",
                                        "ar": "الجمعة"
                                    },
                                    "month": {
                                        "number": 1,
                                        "en": "Muḥarram",
                                        "ar": "مُحَرَّم"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:47 (BST)",
                                "Sunrise": "06:42 (BST)",
                                "Dhuhr": "12:54 (BST)",
                                "Asr": "16:16 (BST)",
                                "Sunset": "19:05 (BST)",
                                "Maghrib": "19:05 (BST)",
                                "Isha": "20:52 (BST)",
                                "Imsak": "04:37 (BST)",
                                "Midnight": "00:54 (BST)"
                            },
                            "date": {
                                "readable": "19 Sep 2020",
                                "timestamp": "1600502461",
                                "gregorian": {
                                    "date": "19-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "19",
                                    "weekday": {
                                        "en": "Saturday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "01-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "01",
                                    "weekday": {
                                        "en": "Al Sabt",
                                        "ar": "السبت"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:49 (BST)",
                                "Sunrise": "06:44 (BST)",
                                "Dhuhr": "12:54 (BST)",
                                "Asr": "16:15 (BST)",
                                "Sunset": "19:03 (BST)",
                                "Maghrib": "19:03 (BST)",
                                "Isha": "20:50 (BST)",
                                "Imsak": "04:39 (BST)",
                                "Midnight": "00:53 (BST)"
                            },
                            "date": {
                                "readable": "20 Sep 2020",
                                "timestamp": "1600588861",
                                "gregorian": {
                                    "date": "20-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "20",
                                    "weekday": {
                                        "en": "Sunday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "02-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "02",
                                    "weekday": {
                                        "en": "Al Ahad",
                                        "ar": "الاحد"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:51 (BST)",
                                "Sunrise": "06:46 (BST)",
                                "Dhuhr": "12:53 (BST)",
                                "Asr": "16:13 (BST)",
                                "Sunset": "19:00 (BST)",
                                "Maghrib": "19:00 (BST)",
                                "Isha": "20:47 (BST)",
                                "Imsak": "04:41 (BST)",
                                "Midnight": "00:53 (BST)"
                            },
                            "date": {
                                "readable": "21 Sep 2020",
                                "timestamp": "1600675261",
                                "gregorian": {
                                    "date": "21-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "21",
                                    "weekday": {
                                        "en": "Monday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "03-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "03",
                                    "weekday": {
                                        "en": "Al Athnayn",
                                        "ar": "الاثنين"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:53 (BST)",
                                "Sunrise": "06:47 (BST)",
                                "Dhuhr": "12:53 (BST)",
                                "Asr": "16:11 (BST)",
                                "Sunset": "18:58 (BST)",
                                "Maghrib": "18:58 (BST)",
                                "Isha": "20:45 (BST)",
                                "Imsak": "04:43 (BST)",
                                "Midnight": "00:53 (BST)"
                            },
                            "date": {
                                "readable": "22 Sep 2020",
                                "timestamp": "1600761661",
                                "gregorian": {
                                    "date": "22-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "22",
                                    "weekday": {
                                        "en": "Tuesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "04-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "04",
                                    "weekday": {
                                        "en": "Al Thalaata",
                                        "ar": "الثلاثاء"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:55 (BST)",
                                "Sunrise": "06:49 (BST)",
                                "Dhuhr": "12:53 (BST)",
                                "Asr": "16:10 (BST)",
                                "Sunset": "18:56 (BST)",
                                "Maghrib": "18:56 (BST)",
                                "Isha": "20:42 (BST)",
                                "Imsak": "04:45 (BST)",
                                "Midnight": "00:52 (BST)"
                            },
                            "date": {
                                "readable": "23 Sep 2020",
                                "timestamp": "1600848061",
                                "gregorian": {
                                    "date": "23-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "23",
                                    "weekday": {
                                        "en": "Wednesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "05-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "05",
                                    "weekday": {
                                        "en": "Al Arba'a",
                                        "ar": "الاربعاء"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:57 (BST)",
                                "Sunrise": "06:50 (BST)",
                                "Dhuhr": "12:52 (BST)",
                                "Asr": "16:08 (BST)",
                                "Sunset": "18:53 (BST)",
                                "Maghrib": "18:53 (BST)",
                                "Isha": "20:40 (BST)",
                                "Imsak": "04:47 (BST)",
                                "Midnight": "00:52 (BST)"
                            },
                            "date": {
                                "readable": "24 Sep 2020",
                                "timestamp": "1600934461",
                                "gregorian": {
                                    "date": "24-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "24",
                                    "weekday": {
                                        "en": "Thursday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "06-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "06",
                                    "weekday": {
                                        "en": "Al Khamees",
                                        "ar": "الخميس"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "04:59 (BST)",
                                "Sunrise": "06:52 (BST)",
                                "Dhuhr": "12:52 (BST)",
                                "Asr": "16:06 (BST)",
                                "Sunset": "18:51 (BST)",
                                "Maghrib": "18:51 (BST)",
                                "Isha": "20:37 (BST)",
                                "Imsak": "04:49 (BST)",
                                "Midnight": "00:52 (BST)"
                            },
                            "date": {
                                "readable": "25 Sep 2020",
                                "timestamp": "1601020861",
                                "gregorian": {
                                    "date": "25-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "25",
                                    "weekday": {
                                        "en": "Friday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "07-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "07",
                                    "weekday": {
                                        "en": "Al Juma'a",
                                        "ar": "الجمعة"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "05:01 (BST)",
                                "Sunrise": "06:54 (BST)",
                                "Dhuhr": "12:52 (BST)",
                                "Asr": "16:05 (BST)",
                                "Sunset": "18:49 (BST)",
                                "Maghrib": "18:49 (BST)",
                                "Isha": "20:34 (BST)",
                                "Imsak": "04:51 (BST)",
                                "Midnight": "00:51 (BST)"
                            },
                            "date": {
                                "readable": "26 Sep 2020",
                                "timestamp": "1601107261",
                                "gregorian": {
                                    "date": "26-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "26",
                                    "weekday": {
                                        "en": "Saturday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "08-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "08",
                                    "weekday": {
                                        "en": "Al Sabt",
                                        "ar": "السبت"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "05:03 (BST)",
                                "Sunrise": "06:55 (BST)",
                                "Dhuhr": "12:51 (BST)",
                                "Asr": "16:03 (BST)",
                                "Sunset": "18:46 (BST)",
                                "Maghrib": "18:46 (BST)",
                                "Isha": "20:32 (BST)",
                                "Imsak": "04:53 (BST)",
                                "Midnight": "00:51 (BST)"
                            },
                            "date": {
                                "readable": "27 Sep 2020",
                                "timestamp": "1601193661",
                                "gregorian": {
                                    "date": "27-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "27",
                                    "weekday": {
                                        "en": "Sunday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "09-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "09",
                                    "weekday": {
                                        "en": "Al Ahad",
                                        "ar": "الاحد"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "05:04 (BST)",
                                "Sunrise": "06:57 (BST)",
                                "Dhuhr": "12:51 (BST)",
                                "Asr": "16:01 (BST)",
                                "Sunset": "18:44 (BST)",
                                "Maghrib": "18:44 (BST)",
                                "Isha": "20:30 (BST)",
                                "Imsak": "04:54 (BST)",
                                "Midnight": "00:50 (BST)"
                            },
                            "date": {
                                "readable": "28 Sep 2020",
                                "timestamp": "1601280061",
                                "gregorian": {
                                    "date": "28-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "28",
                                    "weekday": {
                                        "en": "Monday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "10-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "10",
                                    "weekday": {
                                        "en": "Al Athnayn",
                                        "ar": "الاثنين"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "05:06 (BST)",
                                "Sunrise": "06:58 (BST)",
                                "Dhuhr": "12:51 (BST)",
                                "Asr": "16:00 (BST)",
                                "Sunset": "18:42 (BST)",
                                "Maghrib": "18:42 (BST)",
                                "Isha": "20:27 (BST)",
                                "Imsak": "04:56 (BST)",
                                "Midnight": "00:50 (BST)"
                            },
                            "date": {
                                "readable": "29 Sep 2020",
                                "timestamp": "1601366461",
                                "gregorian": {
                                    "date": "29-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "29",
                                    "weekday": {
                                        "en": "Tuesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "11-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "11",
                                    "weekday": {
                                        "en": "Al Thalaata",
                                        "ar": "الثلاثاء"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        },
                        {
                            "timings": {
                                "Fajr": "05:08 (BST)",
                                "Sunrise": "07:00 (BST)",
                                "Dhuhr": "12:50 (BST)",
                                "Asr": "15:58 (BST)",
                                "Sunset": "18:40 (BST)",
                                "Maghrib": "18:40 (BST)",
                                "Isha": "20:25 (BST)",
                                "Imsak": "04:58 (BST)",
                                "Midnight": "00:50 (BST)"
                            },
                            "date": {
                                "readable": "30 Sep 2020",
                                "timestamp": "1601452861",
                                "gregorian": {
                                    "date": "30-09-2020",
                                    "format": "DD-MM-YYYY",
                                    "day": "30",
                                    "weekday": {
                                        "en": "Wednesday"
                                    },
                                    "month": {
                                        "number": 9,
                                        "en": "September"
                                    },
                                    "year": "2020",
                                    "designation": {
                                        "abbreviated": "AD",
                                        "expanded": "Anno Domini"
                                    }
                                },
                                "hijri": {
                                    "date": "12-02-1442",
                                    "format": "DD-MM-YYYY",
                                    "day": "12",
                                    "weekday": {
                                        "en": "Al Arba'a",
                                        "ar": "الاربعاء"
                                    },
                                    "month": {
                                        "number": 2,
                                        "en": "Ṣafar",
                                        "ar": "صَفَر"
                                    },
                                    "year": "1442",
                                    "designation": {
                                        "abbreviated": "AH",
                                        "expanded": "Anno Hegirae"
                                    },
                                    "holidays": []
                                }
                            },
                            "meta": {
                                "latitude": 51.508515,
                                "longitude": -0.1254872,
                                "timezone": "Europe/London",
                                "method": {
                                    "id": 3,
                                    "name": "Muslim World League",
                                    "params": {
                                        "Fajr": 18,
                                        "Isha": 17
                                    },
                                    "location": {
                                        "latitude": 51.5194682,
                                        "longitude": -0.1360365
                                    }
                                },
                                "latitudeAdjustmentMethod": "ANGLE_BASED",
                                "midnightMode": "STANDARD",
                                "school": "STANDARD",
                                "offset": {
                                    "Imsak": 0,
                                    "Fajr": 0,
                                    "Sunrise": 0,
                                    "Dhuhr": 0,
                                    "Asr": 0,
                                    "Maghrib": 0,
                                    "Sunset": 0,
                                    "Isha": 0,
                                    "Midnight": 0
                                }
                            }
                        }
                    ]
                }

        """
}
