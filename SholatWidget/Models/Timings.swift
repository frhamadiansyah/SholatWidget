//
//  Timings.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

struct Timings: Decodable {
    let fajr: String
    let sunrise: String
    let dhuhr: String
    let asr: String
    let maghrib: String
    let isha: String

    enum CodingKeys: String, CodingKey {
        case fajr = "Fajr"
        case sunrise = "Sunrise"
        case dhuhr = "Dhuhr"
        case asr = "Asr"
        case maghrib = "Maghrib"
        case isha = "Isha"
    }
    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        fajr = try container.decode(String.self, forKey: .fajr)
//        sunrise = try container.decode(String.self, forKey: .sunrise)
//        dhuhr = try container.decode(String.self, forKey: .dhuhr)
//        asr = try container.decode(String.self, forKey: .asr)
//        maghrib = try container.decode(String.self, forKey: .maghrib)
//        isha = try container.decode(String.self, forKey: .isha)
//
//        add = nil
//    }
    
    
}
