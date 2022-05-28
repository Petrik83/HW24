//
//  CardInfo.swift
//  HW24
//
//  Created by Александр Петрович on 27.05.2022.
//

import SwiftUI

struct CardInfo: View {
    
    @Binding var card: Card
    
    var body: some View {
        ScrollView {
            if card.imageUrl != nil {
                AsyncImage(url: URL(string: card.imageUrl!)) { image in
                    image.resizable()
                        .frame(width: CardInfoMetric.imageWidth, height: CardInfoMetric.imageHeight)
                        .padding(.top, CardInfoMetric.imagePadding)
                } placeholder: {
                    ProgressView()
                }
            } else {
                Image("noImageAvailable")
                    .resizable()
                    .padding(.top, CardInfoMetric.imagePadding)
                    .frame(width: CardInfoMetric.imageWidth, height: CardInfoMetric.imageHeight)
            }
            
            HStack {
                VStack(alignment: .leading, spacing: CardInfoMetric.textSpacing) {
                    Text("Имя карты: \(card.name)")
                    Text("Название набора: \(card.setName)")
                    
                    if let type = card.type {
                        Text("Тип: \(type)")
                    }
                    
                    if let manaCost = card.manaCost {
                        Text("Мановая стоимость: \(manaCost)")
                    }
                    
                    if let rarity = card.rarity {
                        Text("Редкость карты: \(rarity)")
                    }
                    
                    if let power = card.power {
                        Text("Сила карты: \(power)")
                    }
                    if let text = card.text {
                        Text("Описание:")
                            .bold()
                        Text(text)
                    }
                }
                Spacer()
            }.padding()
        }
    }
}

enum CardInfoMetric {
    static let imageHeight = 400.0
    static let imageWidth = 250.0
    static let imagePadding = 50.0
    static let textSpacing = 10.0
}

//struct CardInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        CardInfo(card: $(Card(name: "ddd", setName: "ddd", imageUrl: nil, names: nil, manaCost: nil, type: nil, rarity: nil, power: nil)))
//    }
//}
