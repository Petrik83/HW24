//
//  SearchBar.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    @State private var isEditing = false

    var body: some View {
        HStack {

            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search ...", text: $text)
                    .padding(7)
//                    .padding(.horizontal, 25)
//                    .background(Color(.systemGray6))
//                    .cornerRadius(8)
//                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                }
                
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(text == "" ? 0 : 1)
                }
                .padding(.trailing)

            }
            .foregroundColor(.secondary)
//            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)


//            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""

                }) {
                    Text("Search")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
//            }
        }
        .padding()

    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
