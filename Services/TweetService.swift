//
//  TweetService.swift
//  assistant
//
//  Created by Arjun Iyer on 11/21/22.
//

import Firebase

struct TweetService {
    
    func fetchTweets(completion: @escaping([Tweet]) -> Void){
        Firestore.firestore().collection("tweets").getDocuments { snapshot, _ in guard let documents = snapshot?.documents else {return}
            let tweets = documents.compactMap({try? $0.data(as: Tweet.self)})
            completion(tweets)
        }
    }
    
}
