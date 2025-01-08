//
//  PlayerView.swift
//  BasketballAPl
//
//  Created by Hunter Korczykowski (student LM) on 1/12/25.
//

import SwiftUI

struct PlayerView: View {
    @State var d3: FetchData = FetchData()
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(d3.response.response) { result in
                    HStack {
                        Text("\(result.name ?? "unknown")")
                            .font(Constants.textFont)
                            .padding()
                            .background(Color("background"))
                        Spacer()
                        Text("\(result.number ?? 0)")
                    }
                }
            }
            .task {
                await d3.getData()
            }
        }
    }
}

#Preview {
    PlayerView()
}
