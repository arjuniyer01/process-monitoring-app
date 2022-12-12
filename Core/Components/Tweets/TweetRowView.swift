//
//  TweetRowView.swift
//  arjun-app
//
//  Created by Arjun Iyer on 11/20/22.
//

import SwiftUI

func secondsToHoursMinutesSeconds(_ seconds: Int) -> (String) {
    return "H:\(seconds / 3600) M:\((seconds % 3600) / 60) S:\((seconds % 3600) % 60)"
}

struct TweetRowView: View {
    let tweet: Tweet
    var body: some View {
        let elapsed_time: Int = Int(Date().timeIntervalSince1970)-(Int(tweet.epoch_s) ?? 0)
        
        VStack(alignment: .leading){
            HStack{
                Image("profile-pic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        
                        Text("@"+tweet.username)
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                        
                        Text(secondsToHoursMinutesSeconds(elapsed_time))
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                    
                    Text(tweet.content)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    
                }
                
                Spacer()
                
            }
            
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGreen))
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bolt.heart.fill")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemPink))
                }
            }
            .padding()
        }
        .padding()
        
    }
}

//struct TweetRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRowView()
//    }
//}
