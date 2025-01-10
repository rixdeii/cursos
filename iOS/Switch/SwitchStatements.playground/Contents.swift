import UIKit


enum Phone {
    case iPhone11Pro
    case iPhoneSE
    case pixel
    case nokia
}

func getRicOpinion(on phone: Phone){
    switch phone{
        
    case .iPhone11Pro:
        print("iPhone11Pro .. this is the best device. I have one")
    case .iPhoneSE:
        print("iPhoneSE .. this is the device think to use for kids mabe")
    case .pixel:
        print("pixel .. i dontLike android devices")
    case .nokia:
        print("nokia .. indestructible")
    }
}
getRicOpinion(on: .iPhone11Pro)

func determinPlayerLeague(from ranking: Int) {
    
    switch ranking{
    case 0:
        print("is zero..")
        break
    case 1..<20:
        print("is betwen 1 - 20  basic league..")
        break
    default:
        print("unsuported..")
        break
    }
}
determinPlayerLeague(from: 10)
