//
//  MessagesView.swift
//  assistant
//
//  Created by Arjun Iyer on 11/20/22.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        LazyVStack{
            Image(systemName: "gear.circle")
                .foregroundColor(Color(.systemCyan))
                .font(.system(size: 30))
            
            Spacer()
            
            Text("Under Construction")
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
