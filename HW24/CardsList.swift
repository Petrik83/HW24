//
//  CardsList.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI

struct CardsList: View {
    let columns = [GridItem(.flexible())]
    @Binding var cardsArray: Cards

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(0..<cardsArray.cards.count, id:\.self) { card in
                    Cell(card: cardsArray.cards[card]).id(card)
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
