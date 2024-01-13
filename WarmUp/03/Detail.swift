//
//  Detail.swift
//  WarmUp
//
//  Created by 박인호 on 1/13/24.
//

import SwiftUI

struct Detail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("모달 페이지 입니다.")
            
            Button {
                isPresented = false
            }   label: {
                Text("돌아가기")
            }
        }
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
