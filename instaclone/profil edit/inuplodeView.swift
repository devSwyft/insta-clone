import PhotosUI
import SwiftUI

struct inuplodeView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedItems: [PhotosPickerItem] = []
    @State var data: Data?
    @State var gopostupload:Bool = false
    @State var showAlert = false
    var body: some View {
        if gopostupload == true{
            postupload(imageData: data)
        }
        else {
            VStack {
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image("xmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35)
                            .padding()
                            .navigationBarBackButtonHidden()
                    }
                    
                    Text("새 게시물")
                        .font(.system(size: 26))
                        .bold()
                    Spacer()
                    Button {
                        if self.data == nil {
                            self.showAlert = true
                        }else{
                            self.gopostupload.toggle()
                            print("postupload뷰로")
                        }
                    } label: {
                        Text("다음")
                            .padding()
                            .font(.system(size: 20))
                            .bold()
                }
                    .alert(isPresented: $showAlert) {
                                        Alert(
                                            title: Text("경고"),
                                            message: Text("이미지를 선택해주세요."),
                                            dismissButton: .default(Text("확인"))
                                        )
                                    }

            }
            if let data = data, let uiimage = UIImage(data: data) {
                Image(uiImage: uiimage)
                    .resizable()
                    .frame(width: .infinity, height: 400)
            }
            
            Spacer()
            PhotosPicker(
                selection: $selectedItems,
                matching: .images
            ) {
                Text("게시물 업로드")
            }
            .onChange(of: selectedItems) { oldValue, newValue in
                guard let item = selectedItems.first else {
                    return
                }
                item.loadTransferable(type: Data.self) { result in
                    switch result {
                    case .success(let data):
                        if let data = data {
                            self.data = data
                        } else {
                            print("Data is nil")
                        }
                    case .failure(let failure):
                        fatalError("\(failure)")
                    }
                }
            }
        }
      }
    }
}

struct inuplodeView_Previews: PreviewProvider {
    static var previews: some View {
        inuplodeView()
    }
}
