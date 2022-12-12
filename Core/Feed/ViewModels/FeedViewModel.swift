//
//  FeedViewModel.swift
//  assistant
//
//  Created by Arjun Iyer on 11/21/22.
//

import Foundation

class FeedViewModel: ObservableObject{
    @Published var tweets = [Tweet]()
    let service = TweetService()
    
    init(){
        fetchTweets()
    }
    
    func fetchTweets(){
        service.fetchTweets{
            tweets in self.tweets = tweets
        }
    }
    
}
