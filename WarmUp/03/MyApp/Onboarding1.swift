//
//  Onboarding1.swift
//  WarmUp
//
//  Created by 박인호 on 1/14/24.
//

import SwiftUI

struct Onboarding1: View {
    
    let onboardingTitle: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            Text(onboardingTitle)
        }
    }
}

#Preview {
    Onboarding1(onboardingTitle: "온보딩 테스트", backgroundColor: .brown)
}
