//
//  SholatViewDelegateProtocol.swift
//  SholatWidget
//
//  Created by Fandrian Rhamadiansyah on 01/12/21.
//

import Foundation

protocol SholatViewDelegateProtocol: AnyObject {
    func successfulFetch()
    func errorHandler(error: SholatError)
}
