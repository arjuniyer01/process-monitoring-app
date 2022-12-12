//
//  FeedView.swift
//  arjun-app
//
//  Created by Arjun Iyer on 11/20/22.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var viewModel = FeedViewModel()
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.tweets){ tweet in
                    TweetRowView(tweet: tweet)
                    Divider()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
