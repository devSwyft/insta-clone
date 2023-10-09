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
                        .frame(width: 30, height: 35)
                        .padding(.trailing,30)
                }
            }
        }
        Spacer()
    }
}

#Preview {
    genderView()
}
