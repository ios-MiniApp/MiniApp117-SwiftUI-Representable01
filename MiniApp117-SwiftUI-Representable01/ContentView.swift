//
//  ContentView.swift
//  MiniApp117-SwiftUI-Representable01
//
//  Created by 前田航汰 on 2022/12/22.
//

import SwiftUI
import UIKit

struct ContentView: View {

    var body: some View {
        VStack(alignment: .leading) {
            AddTextLabelRepresentable(text: "やっほー")
        }
        .padding()
    }

}

struct AddTextLabelRepresentable: UIViewRepresentable {

    typealias UIViewType = UILabel
    let text: String

    init(text: String) {
        print(#function)
        self.text = text
    }

    func makeUIView(context: Context) -> UILabel {
        print(#function)
        return UILabel(frame: CGRect(x: 12, y: 12, width: 12, height: 12))
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        print(#function)
        uiView.text = text + "だよ"
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
