//
//  DetailView.swift
//  Tek News
//
//  Created by Enzo Oliveira on 07/09/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.googe.com.br")
    }
}



