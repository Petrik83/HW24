//
//  CardsList.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI

struct CardsList: View {
    let columns = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(0..<15) { _ in
                    Cell()
                }
            }
        }
    }
}

struct CardsList_Previews: PreviewProvider {
    static var previews: some View {
        CardsList()
    }
}
