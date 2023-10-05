//
//  SearchView.swift
//  instaclone
//
//  Created by 박성민 on 9/29/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        TabView{
            mainVoew()
                .tabItem{
                    Label("", systemImage: "house")
                }
            searchView()
                .tabItem{
                    Label("", systemImage: "film")
            }
        }
    }
}

struct mainVoew: View {
    var body: some View {
        Text("main View")
    }
}

struct searchView: View {
    var body: some View {
        Text("search View")
    }
}

#Preview {
    SearchView()
}
