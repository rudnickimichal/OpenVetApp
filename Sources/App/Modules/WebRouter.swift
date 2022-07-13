import Vapor

struct WebRouter: RouteCollection {
    let webController = WebController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: webController.WebIndexView)
    }
}
