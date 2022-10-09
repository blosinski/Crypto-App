//
//  HomeView.swift
//  CryptoApp (iOS)
//
//  Created by Brendan Losinski on 9/2/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers
                TopMoversView(viewModel: viewModel)
                
                // Divider line
                Divider()
                
                
                // all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
