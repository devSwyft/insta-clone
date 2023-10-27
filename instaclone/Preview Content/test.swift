import SwiftUI

struct testView: View{
    @State var showImagePicker: Bool = false
    @State var selectedImage: Image? = Image("")
    var body: some View{
        VStack{
            Button{
                self.showImagePicker.toggle()
            }label: {
                Text("Select image")
            }
            self.selectedImage?.resizable().scaledToFit()
            
            Button{
                
            }label: {
                Text("Uplode image")
            }
        }
        .sheet(isPresented: $showImagePicker, content: {
            ImagePicker(image: self.$selectedImage)
        })
    }
}

struct testView_Priviews: PreviewProvider {
    static var previews: some View{
        testView()
    }
}
