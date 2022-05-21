//
//  Model.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import Foundation

struct Cards: Decodable {
        let cards: [Card]
}

struct Card: Decodable {
    let name: String
    let setName: String
    let imageUrl: String?
    let names: [String]?
    let manaCost: String?
    let type: String?
    let rarity: String?
    let power: String?
}
