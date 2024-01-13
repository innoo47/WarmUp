//
//  ListLoop.swift
//  WarmUp
//
//  Created by 박인호 on 1/11/24.
//

import SwiftUI

// 과일 데이터베이스 틀
struct Fruit: Hashable { // Hashable -> 반복 가능
    var name: String
    var matchFruitName: String
    var price: Int
}

struct ListLoop: View {
    
    @State var favoriteFruits = [ // 과일 데이터베이스
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 2000),
        Fruit(name: "Cherry", matchFruitName: "Lemon", price: 3000),
        Fruit(name: "Lemon", matchFruitName: "Lemon", price: 4000),
        Fruit(name: "Apple", matchFruitName: "Banana", price: 3000)
        
    ]
    
    @State var fruitName: String = "" // 리스트에 추가될 과일 이름을 담을 문자열 변수
    
    func hideKeyboard() {
        // 애플리케이션의 키보드를 내리는 코드
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName) // 추가할 과일이름 입력창
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onTapGesture {
                            // 텍스트 필드를 탭했을 때 키보드를 내린다.
                            hideKeyboard()
                        }
                    
                    Button { // 추가 버튼
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    } label: {
                        Text("insert")
                            .padding()
                            .bold()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) { 
                            Text("name: \(fruit.name)")
                            Text("match: \(fruit.matchFruitName)")
                            Text("price: \(fruit.price)")
                        }
                    }.onDelete { indexSet in // 삭제 기능
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                }
                .navigationTitle("Fruit List")
            }
//            .onTapGesture {
//                // 빈 공간을 탭했을 때 키보드를 내린다.
//                hideKeyboard()
//            }
            
        }
    }
}

#Preview {
    ListLoop()
}
