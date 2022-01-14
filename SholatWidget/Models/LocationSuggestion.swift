//
//  LocationSuggestion.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 13/01/22.
//


import Foundation

struct LocationSuggestion: Identifiable {
    let id: UUID = UUID()
    let city: String
    let country: String
}
