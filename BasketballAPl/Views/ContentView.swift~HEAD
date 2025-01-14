//
//  ContentView.swift
//  BasketballAPl
//
//  Created by Hunter Korczykowski (student LM) on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var data: FetchData = FetchData()
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(Color("background"))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Basketball Locator")
                    .font(Constants.titleFont)
                Text("Current Call: \(data.call)")
                NavigationView {
                    List {
                        NavigationLink(destination: {
                            TeamView()
                        }, label: {
                            Image("team")
                                .resizable()
                                .frame(width: 90, height: 90)
                            Text("Team Search")
                                .font(Constants.buttonFont)
                                .padding()
                                .background(Color.border)
                                .cornerRadius(15)
                                .foregroundStyle(Color("text"))
                        })
                        NavigationLink(destination: {
                            PlayerView()
                        }, label: {
                            Image("player")
                                .resizable()
                                .frame(width: 90, height: 90)
                            Text("Player Search")
                                .font(Constants.buttonFont)
                                .padding()
                                .background(Color.border)
                                .cornerRadius(15)
                                .foregroundStyle(Color("text"))
                        }).navigationTitle("Views")
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
