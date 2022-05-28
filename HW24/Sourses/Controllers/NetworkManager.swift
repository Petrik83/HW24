//
//  NetworkManager.swift
//  HW-24 Alamofire project
//
//  Created by Дмитрий Виноградов on 14.04.2022.
//

import Foundation
import Alamofire

class NetworkManager: NetworkManagerProtocol {
    
    func getCardsFromURL(cardName: String, complition: @escaping (Cards) -> ()) {
        AF.request("https://api.magicthegathering.io/v1/cards",
                   method: .get,
                   parameters: ["name": cardName],
                   encoding: URLEncoding.default,
                   headers: nil,
                   interceptor: nil).response { responseData in
            guard let data = responseData.data else { return }
            do {
                let cards = try JSONDecoder().decode(Cards.self, from: data)
                complition(cards)
            } catch let jsonError {
                print("error in JSON:", jsonError)
            }
        }
    }
}




