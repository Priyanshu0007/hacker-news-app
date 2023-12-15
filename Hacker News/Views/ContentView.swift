//
//  ContentView.swift
//  Hacker News
//
//  Created by Priyanshu Gupta on 14/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager=NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url), label: {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                })
            }
            .navigationTitle("Hacker News")
        }
        .onAppear{self.networkManager.fetchData()}
    }
}

#Preview {
    ContentView()
}

