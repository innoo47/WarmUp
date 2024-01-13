//
//  MyApp.swift
//  WarmUp
//
//  Created by 박인호 on 1/14/24.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    
    var body: some View {
        TabView {
            ListLoop()
                .tabItem {
                    Label("Fruits", systemImage: "apple.logo")
                }
            
            Setting()
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
            
            Text("세번째 페이지")
                .tabItem {
                    Label("third", systemImage: "square.and.arrow.up.fill")
                }
            Text("네번째 페이지")
                .tabItem {
                    Label("fourth", systemImage: "square.and.arrow.up.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                Onboarding(isPresented: $showModal)
                
                Onboarding1(onboardingTitle: "온보딩 1", backgroundColor: .blue)
                
                Onboarding1(onboardingTitle: "온보딩 2", backgroundColor: .green)
                
                ZStack {
                    Color.gray.ignoresSafeArea()
                    VStack {
                        Text("온보딩3")
                        
                        Button {
                            showModal = false
                        } label: {
                            Text("Start")
                        }
                    }
                }
                
            }
            .tabViewStyle(.page)
        })
        .onAppear { // 이 화면이 불리자마자 보이는 뷰
            showModal = true
        }
        
    }
}

#Preview {
    MyApp()
}
