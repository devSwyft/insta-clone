//
//  postupload.swift
//  instaclone
//
//  Created by 박성민 on 10/27/23.
//

import SwiftUI

struct postupload: View {
    var body: some View {
        VStack{
            HStack{
                Image("leftarrow")
                    .resizable()
                    .frame(width: 35,height: 40)
                    .padding(.leading,20)
                    .navigationBarBackButtonHidden()
                Text("새 게시물")
                    .font(.system(size: 21))
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    postupload()
}
