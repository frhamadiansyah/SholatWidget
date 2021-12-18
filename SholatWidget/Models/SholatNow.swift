//
//  SholatNow.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 09/12/21.
//

import Foundation

struct SholatNow {
    let currentSholat: SholatEnum
    let nextSholat: SholatEnum
    let durationSecond: Double
    let remainingTimeSecond: Double
    let nextSholatTime: Date
}
