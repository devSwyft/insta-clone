    //
    //  nameview.swift
    //  instaclone
    //
    //  Created by 박성민 on 10/10/23.
    //

    import SwiftUI

    struct nameview: View {
        @State var gocontent = 0
        @State var idchange: String = "박성민"
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
                        Text("이름")
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
                    TextField("\(idchange)",text: $idchange)
                        .padding()
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 360,height: 1)
                    
                }
                Spacer()
            }
        }
    }

    #Preview {
        nameview()
    }
