//
//  CardsTableView.swift
//  HW24
//
//  Created by Александр Петрович on 27.05.2022.
//

import SwiftUI

struct CardsTableView: View {
    var data: ResevedData
    @State var columns = [GridItem(.flexible())]
    
    @State var showCardInfo = false
    @State var cardInfo: Card = Card(name: "", setName: "", imageUrl: nil, manaCost: nil, type: nil, rarity: nil, power: nil, text: nil)
    
    var body: some View {
        if data.isLoaded {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(0..<data.cardsData.cards.count, id:\.self) { card in
                        Button {
                            cardInfo = data.cardsData.cards[card]
                            showCardInfo = true
                        } label: {
                            CardsTableViewCell(card: data.cardsData.cards[card])
                        }.sheet(isPresented: $showCardInfo) {
                            CardInfo(card: $cardInfo)
                        }
                    }
                }
            }
        } else {
            Text("Error. No data")
        }
    }
}

//struct CardsTableView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardsTableView(data: ResevedData())
//    }
//}
