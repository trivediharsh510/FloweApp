//
//  SplashScreen.swift
//  FlowerApp
//
//  Created by HARSH TRIVEDI on 07/07/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "leaf.fill") 
                .resizable()
                .frame(width: 100, height: 100)
            Text("Flower App")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
            }
        }
    }
}
