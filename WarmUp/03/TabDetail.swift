//
//  TabDetail.swift
//  WarmUp
//
//  Created by 박인호 on 1/14/24.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("Hello, World!")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("2")
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("3")
        }
    }
}

#Preview {
    TabDetail()
}
