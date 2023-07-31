//
//  HeaderView.swift
//  fika_iOS
//
//  Created by ByoungYoon Cho on 2023/07/28.
//

import SwiftUI

struct HeaderView: View {
    var placeInfo = ["마포구", "광진구", "동작구", "동대문구"]
    @State private var selectedPlace = 0
    
    var body: some View {
        HStack {
            Picker("", selection: $selectedPlace) {
                ForEach(0 ..< placeInfo.count) {
                    Text(self.placeInfo[$0])
                        .foregroundColor(.red)
                }
            }
            .pickerStyle(DefaultPickerStyle()) // Picker 스타일을 DefaultPickerStyle로 변경
            .clipped() // Picker를 제한된 영역에 맞게 잘라냅니다.
            .cornerRadius(10) // Picker 모서리를 둥글게 설정
            .foregroundColor(.black) // 버튼 텍스트 색상을 흰색으로 지정
            .font(.headline) // 버튼 텍스트 폰트 스타일 지정
            
            Spacer()
            Button(action: {
                // 버튼이 클릭되었을 때의 동작 구현
                // 예를 들어, 검색 기능 구현
                print("Search button tapped!")
            }) {
                Image(systemName: "magnifyingglass") // 돋보기 아이콘
                    .font(.title2) // 아이콘의 크기 조절을 위해 폰트 크기 설정
                    .foregroundColor(.black)
            }
            Button(action: {
                // 버튼이 클릭되었을 때의 동작 구현
                // 예를 들어, 알림 기능 구현
                print("Bell button tapped!")
            }) {
                Image(systemName: "bell") // 종모양 아이콘
                    .font(.title2) // 아이콘의 크기 조절을 위해 폰트 크기 설정
                    .foregroundColor(.black) // 아이콘의 색상 설정
            }
            Button(action: {
                // 버튼 클릭 시 동작할 내용 추가
                print("Profile Button Clicked!")
            }) {
                ZStack {
                    Circle()
                        .foregroundColor(.blue) // 원의 배경 색상
                        .frame(width: 25, height: 25) // 원의 크기 지정

                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white) // 아이콘의 색상
                        .frame(width: 16, height: 16) // 아이콘의 크기 지정
                }
            }
            Button(action: {
                // 버튼 클릭 시 동작할 내용 추가
                print("Hamburger Button Clicked!")
            }) {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black) // 아이콘의 색상
                    .frame(width: 25, height: 40) // 아이콘의 크기 지정
            }
        }
        .padding(.horizontal, 10)
        .padding(.trailing, 14)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
