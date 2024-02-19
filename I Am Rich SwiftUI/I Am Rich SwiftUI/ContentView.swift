//
//  ContentView.swift
//  I Am Rich SwiftUI
//
//  Created by manan gandhi on 2/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemMint)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("I am Rich")
                    .font(
                    .system(size: 40))
                    .fontWeight(.bold)
                .foregroundColor(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:  200, height: 200, alignment: .center)
            }
        }
    }
}

//struct ContentView_Preview: PreviewProvider{
//    static var previews: some View{
//        ContentView()
//    }
//}
#Preview {
    ContentView()
}

