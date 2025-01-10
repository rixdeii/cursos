import UIKit

var greeting = "Hello, playground"

enum NetworkError : Error{
    case badURL
    case noData
    case decodingError
}


struct Post: Decodable{
    let title : String
}

func getPost(completion: @escaping (Result<[Post],NetworkError>)->Void){
    
    guard let url = URL(string:"https://jsonplaceholder.typicode.com/posts")else{
        completion(.failure(NetworkError.badURL) )
        return
    }
    
    URLSession.shared.dataTask(with: url){ data, _ , error in
        guard let data  = data, error == nil else{
            completion(.failure(NetworkError.noData))
            return
        }
        let posts = try? JSONDecoder().decode([Post].self, from: data)
        completion(.success(posts ?? []))
    }.resume()
}



/*getPost { result in
    
    switch result{
    case .failure(let error):
        print(error)
    case .success(let posts):
        print(posts)
        
    }
    
}*/

func getPosts() async throws -> [Post]{
    
    return try await withUnsafeThrowingContinuation { continuation in
        getPost(){ result in
            switch result{
                
            case .failure(let error):
                continuation.resume(throwing: error)
                print(error)
            case .success(let posts):
                continuation.resume(returning: posts)
                print(posts)
                
            }
            
        }
    }
    
}

Task{
    do{
        let posts = try await getPosts()
        print(posts)
    }catch{
        print(error)
    }
    
}


 
