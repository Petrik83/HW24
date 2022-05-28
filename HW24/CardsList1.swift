//
//  CardsList.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI

struct CardsList1: View {
    let columns = [GridItem(.flexible())]
    @ObservedObject var data = ResevedData()

    @Binding var cardsArray: Cards

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(0..<data.cardsData.cards.count, id:\.self) { card in
                    Cell(card: data.cardsData.cards[card])
                }
            }
        }
    }
}

//struct CardsList_Previews: PreviewProvider {
//    static var previews: some View {
//        CardsList()
//    }
//}
