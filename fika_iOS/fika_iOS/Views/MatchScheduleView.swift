//
//  MatchScheduleView.swift
//  fika_iOS
//
//  Created by ByoungYoon Cho on 2023/07/28.
//

import SwiftUI

struct MatchScheduleView: View {
    @State private var isExpanded = true
    let buttonsData = (1...10).map { "Button \($0)" }
    var leagueData = ["PL", "라리가", "분데스리가", "세리에A", "리그앙"]
    @State private var selectedPlace = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("경기 일정")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer()
                Text("2023.07")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Spacer()
                
                Button(action: {
                    // 버튼 클릭 시 동작할 내용 추가
                    isExpanded.toggle()
                }) {
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down") // 토글 상태에 따라 아이콘 변경
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black) // 아이콘의 색상
                        .frame(width: 12, height: 14) // 아이콘의 크기 지정
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 10)
            
            if isExpanded {
                VStack  {
                    // 확장되었을 때 추가적인 내용
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.fixed(30))], spacing: 10) {
                            ForEach(0..<leagueData.count / 5, id: \.self) { index in
                                HStack {
                                    ForEach(leagueData[index * 5..<min(index * 5 + 5, leagueData.count)], id: \.self) { item in
                                        Button(action: {
                                            // 버튼을 눌렀을 때의 액션
                                            print("Button tapped: \(item)")
                                        }, label: {
                                            VStack {
                                                Text(item)
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 14))
//                                                    .padding(.top, 25)
                                                    .frame(width: 64)
                                                Rectangle() // 파란색 아래 선을 겹칩니다.
                                                    .fill(Color.black)
                                                    .frame(height: 3)
                                                    .alignmentGuide(.bottom) { _ in 0 }
                                            }
                                        })
                                    }
                                }
                            }
                        }
                    }
                    HStack {
                        Text("00:00")
                            .font(.system(size: 14))
                        
                        Text("종료")
                            .font(.system(size: 14))
                            .padding(.leading, 25)
                        
                        Spacer()
                    }
                    .padding(.all)
                    HStack {
                        Rectangle()
                            .fill(Color.blue) // 파란색으로 채우는 부분
                            .frame(width: 25, height: 25) // 상자의 크기 설정
                            .cornerRadius(10) // 상자의 모서리를 둥글게 설정
                        Text("첼시")
                            .frame(width: 100,
                                   alignment: .leading)
                            .padding(.leading, 8)
                        Text("5")
                        Spacer()
                    }
                    HStack {
                        Rectangle()
                            .fill(Color.blue.opacity(0.2)) // 파란색으로 채우는 부분
                            .frame(width: 25, height: 25) // 상자의 크기 설정
                            .cornerRadius(10) // 상자의 모서리를 둥글게 설정
                        Text("맨시티")
                            .frame(width: 100,
                                   alignment: .leading)
                            .padding(.leading, 8)
                        Text("1")
                        Spacer()
                    }
                    .padding(.top, 8)
                }
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .shadow(radius: 3)
                
            }
        }
        .background(Color.white)
        Spacer()
    }
}

struct MatchScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        MatchScheduleView()
    }
}
