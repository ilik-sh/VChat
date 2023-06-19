//
//  File.swift
//  
//
//  Created by Ilya on 16.06.23.
//

import Vapor

struct UserAuthenticator: AsyncBasicAuthenticator {
    func authenticate(basic: BasicAuthorization, for request: Request) async throws {
        if basic.username == "admin" && basic.password == "admin" {
            request.auth.login(User(name: "Admin"))
        }
    }
    
    
}

