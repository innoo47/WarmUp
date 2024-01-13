//
//  firstList.swift
//  WarmUp
//
//  Created by 박인호 on 1/14/24.
//

import SwiftUI

struct firstList: View {
    var body: some View {
            NavigationStack {
                List {
                    NavigationLink {
                        Text("첫 번째 하위페이지")
                    } label: {
                        Text("첫 번째 하위페이지 입니다")
                    }
                    
                    NavigationLink {
                        Text("두 번째 하위페이지")
                    } label: {
                        Text("두 번째 하위페이지 입니다")
                    }
                    
                    NavigationLink {
                        Text("세 번째 하위페이지")
                    } label: {
                        Text("세 번째 하위페이지 입니다")
                    }
                    
                    NavigationLink {
                        Text("네 번째 하위페이지")
                    } label: {
                        Text("네 번째 하위페이지 입니다")
                    }
                }
                .navigationTitle("리스트")
            }
    }
}

#Preview {
    firstList()
}
