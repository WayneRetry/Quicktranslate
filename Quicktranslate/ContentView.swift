//
//  ContentView.swift
//  Quicktranslate
//
//  Created by Wayne Lin on 2020/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("翻譯小工具 Quicktranslat").font(.title).padding(.bottom)
            Text("這是會常駐在右上角快速開啟Google翻譯的小工具\n要完整關閉APP，請開起右上的小視窗，右下角有一個Close App\n看完我就可以關閉這個視窗喔👋")
                .font(.body)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(minWidth: 500, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 200, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
