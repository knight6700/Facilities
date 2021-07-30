//
//  DefaultResponse.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
public struct DefaultResponses <T: Decodable>: Decodable {
    // TODO
    var isSucceed: Bool
    var messages: [String]
    var encryptedMessages: [String]?
    var messagesCode: Int
    var internalMessages, serviceDocuments: [String]
    var data: T

    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case isSucceed = "IsSucceed"
        case messages = "Messages"
        case encryptedMessages = "EncryptedMessages"
        case messagesCode = "MessagesCode"
        case internalMessages = "InternalMessages"
        case serviceDocuments = "ServiceDocuments"
    }

}
