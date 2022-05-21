//
//  ContentView.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI
import Alamofire
struct ContentView: View {
    @State var text = ""
    var body: some View {
        VStack {
            SearchBar(text: $text)
            CardsList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
