//
//  CardNameEnterView.swift
//  HW24
//
//  Created by Александр Петрович on 27.05.2022.
//

import SwiftUI

struct CardNameEnterView: View {
    @ObservedObject var data: ResevedData
    @Binding var show: Bool
    
    var body: some View {
        
        VStack {
            Text("Введите имя карты:")
            TextField("Enter card name...", text: $data.searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Button {
                show.toggle()
                data.getData()
            } label: {
                Text("Search")
            }
        }
    }
}
