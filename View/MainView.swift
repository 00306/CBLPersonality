//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var boolean: Boolean

    var body: some View {
        ZStack {
            // Type 예시
            TypeExampleView()
            
            // 테스트 시작
            QuestionView()
            
            ButtonView()
            
            // 테스트 종료
            TestFinishView()
            
            // 결과
            ResultView()
            
            VStack {
                Spacer()
                
                ButtonView()
            }
            
            ResultView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()            
    }
}
