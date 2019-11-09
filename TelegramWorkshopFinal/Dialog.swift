//
//  Dialog.swift
//  TelegramWorkshopStarter
//
//  Created by Vlad Eliseev on 02.11.2019.
//  Copyright © 2019 Vlad Eliseev. All rights reserved.
//

import Foundation

enum DialogType {
    case dialog
    case chat
}

struct Dialog {
    let id: Int
    let userName, lastMessageText, lastMessageTime, userImageName: String
    let unreadMessagesCount: Int?
}
