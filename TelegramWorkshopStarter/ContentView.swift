//
//  ContentView.swift
//  TelegramWorkshopStarter
//
//  Created by Vlad Eliseev on 02.11.2019.
//  Copyright © 2019 Vlad Eliseev. All rights reserved.
//

import SwiftUI

struct DialogView: View {
    
    let dialogs: [Dialog] = [
        .init(id: 0, userName: "Elon Musk", lastMessageText: "Do U wanna build a rocket? I can help with it!", lastMessageTime: "03:00", userImageName: "musk", unreadMessagesCount: 1),
        .init(id: 1, userName: "Kanye West", lastMessageText: "Drop that shit I can't wait! 🔥🔥🔥", lastMessageTime: "10:00", userImageName: "west", unreadMessagesCount: 2),
        .init(id: 2, userName: "Steve Jobs", lastMessageText: "You can't connect the dots looking forward; you can only connect them looking backward, you know", lastMessageTime: "08:00", userImageName: "jobs", unreadMessagesCount: 1),
        .init(id: 3, userName: "Dennis Ritchie", lastMessageText: "Ok let's do that weird C thing...", lastMessageTime: "08:45", userImageName: "ritchie", unreadMessagesCount: 0),
        .init(id: 4, userName: "Nikola Tesla", lastMessageText: "I think in terms of energy, frequency and vibration you know", lastMessageTime: "11:00", userImageName: "tesla", unreadMessagesCount: 3),
        .init(id: 5, userName: "Henry Ford", lastMessageText: "If everyone is moving forward together, then success takes care of itself!", lastMessageTime: "07:00", userImageName: "ford", unreadMessagesCount: 4)
    ]
    
    var body: some View {
        Text("Hello DevFest")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DialogView()
    }
}
