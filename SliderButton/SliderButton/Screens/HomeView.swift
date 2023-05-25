//
//  HomeView.swift
//  SliderButton
//
//  Created by Uzay Altıner on 25.05.2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActivate: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER

            Spacer()
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()

            // MARK: - CENTER

            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()

            // MARK: - FOOTER
             
            Spacer()
            
            Button {
                isOnboardingViewActivate = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
