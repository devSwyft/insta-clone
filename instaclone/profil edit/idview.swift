//
//  idview.swift
//  instaclone
//
//  Created by 박성민 on 10/10/23.
//

import SwiftUI

struct idview: View {
    @State var gocontent = 0
    @State var idchange: String = "ps_m07"
    var body: some View {
        if(gocontent == 1){
            profileditView()
        }else{
            VStack{
                HStack{
                    Button{
                        gocontent = 1
                    }label: {
                        Image("xmark")
                            .resizable()
                            .frame(width: 30,height: 40)
                            .padding(.leading,20)
                    }
                    Text("사용자 이름")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.black)
                        .padding(.leading,20)
                    Spacer()
                    Button{
                        gocontent = 1
                        print("저장")
                    }label:{
                        Image("check")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 35)
                            .padding(.trailing,30)
                    }
                }
                HStack{
                    TextField("\(idchange)",text: $idchange)
                        .padding()
                    Spacer()
                }
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 360,height: 1)
                HStack{
                    Text("14일간 사용지 이름을 다시 \(idchange)(으)로 변경할 수 없습니다.")
                        .font(.system(size: 14))
                        .padding()
                        .foregroundColor(.black)
                        .opacity(0.5)
                    Spacer()
                }
            }
            
            Spacer()
        }
    }

}

#Preview {
    idview()
}
