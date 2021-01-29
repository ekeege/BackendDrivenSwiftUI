//
//  HomeView.swift
//  BackendDrivenSwiftUI
//
//  Created by Ege Eke on 29.01.2021.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var homeVM: HomeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                title
                
                if let section = homeVM.section1 {
                    section.renderView()
                }
                
                Divider()
                
                if let section = homeVM.section2 {
                    section.renderView()
                }
                
                Spacer()
            }
            .padding()
        }
    }
    
    var title: some View {
        Text(homeVM.title)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .colorScheme(.dark)
        }
    }
}
