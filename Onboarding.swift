//
//  Onboarding.swift
//  WarmUp
//
//  Created by 박인호 on 1/11/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            
            // 타이틀
            Text("What's New in Photos")
                .font(.largeTitle)
                .minimumScaleFactor(0.5) // 텍스트 크기의 최소 축소 비율 지정
                .lineLimit(1) // 텍스트가 두 줄을 넘지 않도록 설정
                .bold()
                .padding()
                .padding(.top, 50)
            
            HStack { // 1번 줄
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            
            HStack { // 2번 줄
                Image(systemName: "slider.horizontal.2.square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 15)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text("Copy & Paste Edits")
                        .font(.headline)
                    
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            
            HStack { // 3번 줄
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text("Merge Duplicates")
                        .font(.headline)
                    
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            
            Spacer()
            
            Button { // 확인 버튼
                
            } label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .bold()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    Onboarding()
}
