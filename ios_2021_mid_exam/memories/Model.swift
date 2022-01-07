

struct Memory {
    let title: String
    let asset: String
    let description: String
    let date: String
}

extension Memory {
    var isImage: Bool {
        get {
            let asset = self.asset.lowercased()
            return asset.hasSuffix("png")
            && asset.hasSuffix("jpg")
        }
    }
}

struct Model {
    let memories = [
        Memory(title: "Природа", asset: "image_1.jpg", description: "Зелена природа", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_2.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Облаци", asset: "image_3.jpg", description: "Високо в облаците", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_4.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_5.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_6.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_7.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_8.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_9.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_10.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_11.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_12.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_13.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_14.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_15.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_16.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_17.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Природа", asset: "image_18.jpg", description: "", date: "2021-10-01"),
        Memory(title: "Видео", asset: "video_1.mp4", description: "", date: "2021-10-01"),
        
           
           
        ]
}
