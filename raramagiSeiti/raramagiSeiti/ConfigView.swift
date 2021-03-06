//
//  configView.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/20.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import SwiftUI
import WebKit

struct ConfigView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink("お問い合わせ", destination: contactView(urlString: "https://yotubarail.work/contact"))
                    NavigationLink("プライバシーポリシー", destination: privacyPolicyView(urlString: "https://yotubarail.work"))
                }
                .listStyle(GroupedListStyle())
                Spacer()
                Text("下にスワイプして閉じる")
                    .font(.system(size: 20))
                Spacer()
                Image(systemName: "arrow.down")
                    .frame(height: 100)
                Spacer()
            }
            .navigationBarTitle("設定")
//            .navigationBarItems(trailing: Button("完了") {
//                dismiss
//            })
        }
    }
}

// WebViewの設定

struct MyWebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else {
            return
        }
        uiView.load(URLRequest(url: url))
    }
}


struct contactView: View {
    let urlString: String
    
    var body: some View {
        MyWebView(urlString: urlString)
            .navigationBarTitle(Text("お問い合わせ"), displayMode: .inline)
    }
}

struct privacyPolicyView: View {
    let urlString: String
    
    var body: some View {
        MyWebView(urlString: urlString)
            .navigationBarTitle(Text("プライバシーポリシー"), displayMode: .inline)
    }
}


struct configView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView()
    }
}


