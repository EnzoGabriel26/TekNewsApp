//
//  ContentView.swift
//  Tek News
//
//  Created by Enzo Oliveira on 02/09/23.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()
 
    var body: some View {
        NavigationStack {
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title
                        )
                    }
                }
            }
            .navigationTitle("TekNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
