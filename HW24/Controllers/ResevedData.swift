//
//  ResevedData.swift
//  HW24
//
//  Created by Александр Петрович on 27.05.2022.
//

import Foundation

protocol NetworkManagerProtocol {
    func getCardsFromURL(cardName: String, complition: @escaping (Cards) -> ())
}

class ResevedData: ObservableObject {
    private var delegate: NetworkManagerProtocol?

    @Published var isLoaded = false
    @Published var searchText = "Black Lotus"
    @Published var cardsData = Cards(cards: [Card]())
    
    func getData() {
        delegate?.getCardsFromURL(cardName: searchText, complition: { card in
            self.cardsData = card
            print(card)
        })
        isLoaded = true
    }
    
    init() {
        delegate = NetworkManager()
    }
    
}
