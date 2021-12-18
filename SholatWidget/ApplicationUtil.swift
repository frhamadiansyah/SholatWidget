//
//  ApplicationUtil.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 08/12/21.
//

import Foundation

struct ApplicationUtil {
    static let primary: String = "primary"
    static let secondary: String = "secondary"
    static let tersiery: String = "tersiery"

    static func convertStringToDateTime(timeString: String) -> Date {
        let firstArray = timeString.components(separatedBy: ":")
        let hour = Int(firstArray.first!)

        let secondArray = firstArray.last!.components(separatedBy: " ")
        let minute = Int(secondArray.first!)

        let result = Calendar.current.date(bySettingHour: hour!, minute: minute!, second: 0, of: Date())!
        return result
    }
}
