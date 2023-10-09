//
//  genderView.swift
//  instaclone
//
//  Created by 박성민 on 10/9/23.
//

import SwiftUI

struct genderView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button{
                    self.presentationMode.wrappedValue.dismiss()
                }label: {
                    Image("xmark")
                        .resizable()
                        .frame(width: 30,height: 40)
                        .padding(.leading,20)
                }
                Text("성별")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.black)
                    .padding(.leading,30)
                Spacer()
                Button{
                    self.presentationMode.wrappedValue.dismiss()
                    print("저장")
                }label:{
                    Image("check")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 35)
                        .padding(.trailing,30)
                }
            }
        }
        HStack{
            Text("공개 프로필에 포함되지 않습니다.")
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))
                .opacity(0.5)
            Spacer()
        }
        HStack{
            
        }
        Spacer()
    }
}

#Preview {
    genderView()
}
