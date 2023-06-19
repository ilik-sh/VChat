import Vapor

func routes(_ app: Application) throws {
    
    var connections: [WebSocket : UUID]
    app.get { req async in
        "It works!"
        
    }
    
    app.post("signup") { req in
        "dasda"
    }

    
    app.webSocket("sendMessage") { req, client in
        client.pingInterval = .seconds(10)
    }
    
    let protected = app.grouped(UserAuthenticator())
        .grouped(User.guardMiddleware())
    
    protected.get("hello") { req in
        try req.auth.require(User.self).name
    }
}
