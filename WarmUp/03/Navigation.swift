//
//  Navigation.swift
//  WarmUp
//
//  Created by 박인호 on 1/13/24.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일 뷰로 이동", "디테일 뷰로 이동2 "]
    let destinations = ["데스티네이션 입니다", "데스티네이션 입니다2"]
    
    @State var showModal: Bool = false
    
    var body: some View {

        NavigationStack { // 스택만 표시
            
            List {
                ForEach([0,1], id:\.self) { index in
                    NavigationLink {
                        Text(destinations[index])
                    } label: {
                        Text(titles[index])
                    }
                }
                
            }
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        showModal = true
                    } label: {
                        Text("add")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지")
            })
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
