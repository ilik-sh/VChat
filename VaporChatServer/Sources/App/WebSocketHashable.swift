//
//  File.swift
//  
//
//  Created by Ilya on 16.06.23.
//

import Foundation
import WebSocketKit

extension WebSocket: Hashable {
    public static func ==(lhs: WebSocket, rhs: WebSocket) -> Bool {
        ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    public func hash (into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}
