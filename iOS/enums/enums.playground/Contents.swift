import UIKit

enum SocialPlatform: String, CaseIterable{
    case twitter
    case faceBook
    case instragram
    case linkedIn
}

enum Symbols{
    
    static let location = UIImage(systemName: "mappin.and.ellipse")
    
}


func shareIamge(on platform: SocialPlatform) -> String{
    switch platform {
    
    case .twitter:
        return "twitter"
    case .faceBook:
        return "faceBook"
    case .instragram:
        return "instragram"
    case .linkedIn:
        return "linkedIn"
    }
}
print(shareIamge(on: .faceBook))

var image = UIImage()
image = Symbols.location!

print(image)

for platform in SocialPlatform.allCases{
    
    print (platform.rawValue)
    
}


enum SocialMediaPlatform{
    case twitter(followers :Int)
    case youtube(Subscribers: Int)
    case instagram
    case linkedIn
}

func getSponsorShipElegibility(for platform: SocialMediaPlatform){
    
    
    switch platform {
    
    case .twitter(followers: let followers) where followers > 2 :
         print("followers number: \(followers)")
    case .youtube(Subscribers: let Subscribers):
        print("followers number: \(Subscribers)")
    case .instagram, .linkedIn, .twitter:
        print("Not Elegible Sponsorship")
   
    }
    
    
}

getSponsorShipElegibility(for: .twitter(followers: 5))






