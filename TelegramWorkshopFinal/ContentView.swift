//
//  ContentView.swift
//  TelegramWorkshopStarter
//
//  Created by Vlad Eliseev on 02.11.2019.
//  Copyright © 2019 Vlad Eliseev. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            DialogView()
            .tabItem {
                Image(systemName: "square.and.pencil")
                Text("Dialogs")
            }
            .tag(0)
            
            ExampleView()
            .tabItem {
                Image(systemName: "square.and.pencil")
                Text("Test")
            }
            .tag(1)
        }
    }
}

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
        NavigationView {
            List {
                ForEach(dialogs, id: \.id) {dialog in
                    NavigationLink(destination: MessageDetailedView(text: dialog.lastMessageText)) {
                        DialogCellView(dialog: dialog)
                    }
                }
            }
            .navigationBarTitle("Chats", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {}) {Text("Edit")},
                trailing: Button(action: {}) {Image(systemName: "square.and.pencil")}
            )
        }
    }
}

struct DialogCellView: View {
    let dialog: Dialog
    
    var body: some View {
        HStack {
            Image(dialog.userImageName)
            .resizable()
            .scaledToFill()
            .frame(width: 60, height: 60)
            .clipped()
            .clipShape(
                Circle()
            )
            
            VStack(alignment: .leading) {
                Text(dialog.userName)
                    .font(.system(size: 16, weight: .bold))
                Text(dialog.lastMessageText)
                    .lineLimit(2)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(dialog.lastMessageTime)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                
                Spacer()
                
                if (dialog.unreadMessagesCount ?? 0) > 0 {
                    Text("\(dialog.unreadMessagesCount ?? 0)")
                    .lineLimit(1)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .background(
                        Capsule()
                            .foregroundColor(.gray)
                    )
                }
                
            }
            .padding(.bottom, 6)
            .padding(.top, 6)
        .frame(width: 50)
            
        }
    }
}

struct ExampleView : View {
    var body: some View {
        Text("Hello devFest")
    }
}

struct MessageDetailedView: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
