//
//  TeamView.swift
//  BasketballAPl
//
//  Created by Hunter Korczykowski (student LM) on 1/12/25.
//

import SwiftUI

struct TeamView: View {
    @State var d2: FetchData = FetchData()
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(d2.response.response) { result in
                    AsyncImage(url: URL(string: result.logo
                        ?? "error"))
                    Text("\(result.name ?? "unknown")")
                        .font(Constants.titleFont)
                    
                }
            }
            .task {
                await d2.getData()
            }
        }
    }
    
}

#Preview {
    TeamView()
}
