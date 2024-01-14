//
//  Setting.swift
//  WarmUp
//
//  Created by 박인호 on 1/12/24.
//

import SwiftUI

struct settingInfo: Hashable {
    
    var title: String
    var systemName: String
    var backgroundColor: Color
    var forgroundColor: Color = .white
    
    
}


struct Setting: View {
    
    @State var data: [[settingInfo]] = [
        [settingInfo(title: "스크린 타임", systemName: "hourglass", backgroundColor: .purple)],
        [settingInfo(title: "일반", systemName: "gear", backgroundColor: .gray),
        settingInfo(title: "손쉬운 사용", systemName: "accessibility", backgroundColor: .blue),
        settingInfo(title: "개인정보 보호 및 보안", systemName: "hand.raised.fill", backgroundColor: .blue)],
        [settingInfo(title: "암호", systemName: "key.fill", backgroundColor: .gray)],
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                
                NavigationLink {
                    Section {
                        Text("123")
                    }
                } label: {
                    HStack {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .padding(.all,15)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                        
                        VStack(alignment: .leading) {
                            Text("박인호")
                                .padding(.horizontal, 5)
                                .minimumScaleFactor(0.5) // 텍스트 크기의 최소 축소 비율 지정
                                .lineLimit(1) // 텍스트가 한 줄을 넘지 않도록 설정
                                .font(.system(size: 25))
                            Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                                .padding(.horizontal, 5)
                                .minimumScaleFactor(0.5) // 텍스트 크기의 최소 축소 비율 지정
                                .lineLimit(2) // 텍스트가 한 줄을 넘지 않도록 설정
                                .font(.subheadline)
                        }
                        
                    }
                }
                
                ForEach(data, id: \.self) { section in
                    
                    Section {
                        ForEach(section, id: \.self) { item in
                            
                            Label {
                                Text("\(item.title)")
                                    .minimumScaleFactor(0.5) // 텍스트 크기의 최소 축소 비율 지정
                                    .lineLimit(1) // 텍스트가 한 줄을 넘지 않도록 설정
                                    
                            } icon: {
                                Image(systemName: item.systemName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .padding(.all, 7)
                                .background(item.backgroundColor)
                                .foregroundColor(item.forgroundColor)
                                .cornerRadius(8)
                            }
                        }
                        
                    }
                    
                }
                
//                Section {
//                    Label {
//                        Text("스크린 타임")
//                    }   icon: {
//                        Image(systemName: "hourglass")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.purple)
//                            .foregroundColor(.white)
//                            .cornerRadius(8)
//                    }
//                }
//
//                Section {
//                    Label {
//                        Text("일반")
//                    }   icon: {
//                        Image(systemName: "gear")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.gray)
//                            .foregroundColor(.white)
//                            .cornerRadius(8)
//                    }
//
//                    Label {
//                        Text("손쉬운 사용")
//                    }   icon: {
//                        Image(systemName: "accessibility")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(8)
//                    }
//
//                    Label {
//                        Text("개인정보 보호 및 보안")
//                    }   icon: {
//                        Image(systemName: "hand.raised.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(8)
//                    }
//                }
//
//                Section {
//                    Label {
//                        Text("암호")
//                    }   icon: {
//                        Image(systemName: "key.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.gray)
//                            .foregroundColor(.white)
//                            .cornerRadius(8)
//                    }
//                }
                
                
                
            }
            
            
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
