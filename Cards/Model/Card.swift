//
//  Card.swift
//  Cards
//
//  Created by Alexander Zub on 19.09.2022.
//

import Foundation
import UIKit

enum CardType: CaseIterable {
    case circle
    case cross
    case square
    case fill
}

enum CardColor: CaseIterable {
    case red
    case green
    case black
    case gray
    case brown
    case yellow
    case purple
    case orange
}

typealias Card = (type: CardType, color: CardColor)
