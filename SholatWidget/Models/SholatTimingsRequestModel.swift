//
//  SholatTimingsRequestModel.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

struct SholatTimingsRequestModel {
    let latitude: Double
    let longitude: Double
    let date: Date
    func getMonth(date: Date) -> Int {
        return Calendar.current.component(.month, from: date)
    }
    func getYear(date: Date) -> Int {
        return Calendar.current.component(.year, from: date)
    }
}
