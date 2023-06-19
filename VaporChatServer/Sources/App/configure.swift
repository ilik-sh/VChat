import Vapor
import Fluent
import FluentMySQLDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.mysql(hostname: Environment.get("DATABASE_HOST") ?? "localhost",
                             port: 3306,
                             username: Environment.get("DATABASE_USERNAME") ?? "root",
                             password: Environment.get("DATABASE_PASSWORD") ?? "root",
                             database: Environment.get("DATABASE_NAME") ?? "vapor"
                            ), as: .mysql)
    // register routes
    try routes(app)
}
