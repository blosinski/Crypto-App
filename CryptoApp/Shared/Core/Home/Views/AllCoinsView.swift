//
//  AllCoinsView.swift
//  CryptoApp (iOS)
//
//  Created by Brendan Losinski on 9/2/22.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                    
                
                Spacer()
                
                Text("Prices")
            }
            .foregroundColor(.white)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.02)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

