//
//  ReceveData.swift
//  HW24
//
//  Created by Александр Петрович on 23.05.2022.
//

import Foundation
import Alamofire

class ReceveData {
    var cardName: String
    
    init(cardName: String) {
        self.cardName = cardName
    }
    
    
    func fetchCardsData(complition: @escaping (Cards) -> Void) {
        OperationQueue().addOperation {
            AF.request("https://api.magicthegathering.io/v1/cards", method: .get, parameters: ["name": self.cardName]).responseDecodable(of: Cards.self) { data in
                guard let recevedData = data.value else { return }
                DispatchQueue.main.async {
                    complition(recevedData)
                }
            }
        }
    }
}


