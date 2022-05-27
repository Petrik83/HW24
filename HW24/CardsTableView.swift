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


    var body: some View {
            if data.isLoaded {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        ForEach(0..<data.cardsData.cards.count, id:\.self) { card in
                            Button {
                                showCardInfo = true
                            } label: {
//                                Text("dsdfsf")
                                CardsTableViewCell(card: data.cardsData.cards[card])
                            }.sheet(isPresented: $showCardInfo) {
                                CardInfo()
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
