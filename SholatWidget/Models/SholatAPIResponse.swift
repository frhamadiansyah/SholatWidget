//
//  SholatAPIResponse.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

struct SholatAPIResponse: Decodable {
    let status: String
    let data: [SholatData]
}
