//
//  Tweet.swift
//  assistant
//
//  Created by Arjun Iyer on 11/21/22.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let content: String
    let epoch_s: String
    let username: String
    
}
