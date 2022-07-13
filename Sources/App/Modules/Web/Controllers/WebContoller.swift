import Vapor
struct WebController {
    func WebIndexView(req: Request) throws -> Response {
        req.templates.renderHtml(WebIndex(.init(title: "OpenVetApp")))
    }
}
