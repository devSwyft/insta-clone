import SwiftUI
import Photos

struct ContentView11: View {
    @State private var selectedImage: UIImage?
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(fetchPhotos(), id: \.self) { asset in
                    GalleryItem(asset: asset)
                        .onTapGesture {
                            loadFullImage(for: asset)
                        }
                }
            }
            .padding()
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        
        if let image = selectedImage {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    selectedImage = nil
                }
        }
    }
    
    func fetchPhotos() -> [PHAsset] {
        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [NSSortDescriptor(key:"creationDate", ascending:false)]
        
        let result = PHAsset.fetchAssets(with:.image, options:fetchOptions)
        
        var assets = [PHAsset]()
        
        result.enumerateObjects { (asset, _, _) in
            assets.append(asset)
        }

         return assets
    }

    func loadFullImage(for asset: PHAsset) {
         let manager = PHImageManager.default()
         let options = PHImageRequestOptions()
         options.isSynchronous = true
        
         manager.requestImageDataAndOrientation(for: asset, options: options) { (data, _, _, _) in
             if let imageData = data, let image = UIImage(data: imageData) {
                 selectedImage = image
             }
         }
    }
}

struct GalleryItem: View {
    var asset: PHAsset
    
    var body: some View {
        Image(uiImage: loadThumbnail(for: asset))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .cornerRadius(10)
    }
    
    func loadThumbnail(for asset: PHAsset) -> UIImage {
        let manager = PHImageManager.default()
        let options = PHImageRequestOptions()
        options.isSynchronous = true
        
        var thumbnail = UIImage()
        
        manager.requestImage(for: asset, targetSize:.init(width: 100, height:
             100), contentMode:.aspectFill, options:.none) { (result, _) in
                 if let image = result {
                     thumbnail = image
                 }
             }

         return thumbnail
     }
}

#Preview {
    ContentView11()
}
