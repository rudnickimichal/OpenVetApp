import Fluent
import FluentPostgresDriver
import Vapor
import SwiftHtml



// configures your application
public func configure(_ app: Application) throws {
    /// use the Public directory to serve public files
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    /// extend paths to always contain a trailing slash
    app.middleware.use(ExtendPathMiddleware())

    app.databases.use(.postgres(
        hostname: Environment.get("DATABASE_HOST") ?? "localhost",
        port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? PostgresConfiguration.ianaPortNumber,
        username: Environment.get("DATABASE_USERNAME") ?? "vapor_username",
        password: Environment.get("DATABASE_PASSWORD") ?? "vapor_password",
        database: Environment.get("DATABASE_NAME") ?? "vapor_test"
    ), as: .psql)
    
    let routers: [RouteCollection] = [
        WebRouter(),
        ]
    for router in routers {
        try router.boot(routes: app.routes)
    }
}
