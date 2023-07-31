//
//  BannerView.swift
//  fika_iOS
//
//  Created by ByoungYoon Cho on 2023/07/28.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            
            HStack{
                Rectangle()
                    .fill(Color.white) // 파란색으로 채우는 부분
                    .frame(width: 50, height: 50) // 상자의 크기 설정
                    .cornerRadius(10) // 상자의 모서리를 둥글게 설정
                VStack(alignment: .leading) {
                    Text("우리 동네에서 열리는 축구 응원 모임이 있어요.")
                        .font(.system(size: 16,
                                      weight: .semibold))
                        .foregroundColor(.white)
                    Text("내 근처의 축구 팬들을 만나보세요")
                        .font(.system(size: 16,
                                      weight: .semibold))
                        .foregroundColor(.white)
                }
                .padding(.leading, 10)
            }
        }
        .frame(height: 100)
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
