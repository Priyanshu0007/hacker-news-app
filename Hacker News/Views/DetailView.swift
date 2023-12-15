//
//  DetailView.swift
//  Hacker News
//
//  Created by Priyanshu Gupta on 14/12/23.
//

import SwiftUI
struct DetailView: View {
    let url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url:"https://www.google.com")
}

