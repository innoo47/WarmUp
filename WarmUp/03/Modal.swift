//
//  Modal.swift
//  WarmUp
//
//  Created by 박인호 on 1/13/24.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("메인 페이지 입니다")
            Button {
//                showModal = true
                showModal.toggle() // true -> false, false -> true
            } label: {
                Text("Modal 화면 전환")
            }
            
        }
        .sheet(isPresented: $showModal) { // modal이 사라지면 showModal이 false로 바뀜
            Detail(isPresented: $showModal)
        }
    }
}

#Preview {
    Modal()
}
