//
//  ContentView.swift
//  SliderButton
//
//  Created by Uzay Altıner on 25.05.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActivate: Bool = true
    var body: some View {
        ZStack {
            if isOnboardingViewActivate {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
