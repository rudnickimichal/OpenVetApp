import Vapor
struct WebController {
    func WebIndexView(req: Request) throws -> Response {
        req.templates.renderHtml(WebIndexTemplate(.init(title: "OpenVetApp",
                                                        headerMenu: .init(title: "Header Menu"),
                                                        body: .init(title: "Body"),
                                                        footerMenu: .init(title: "FooterMenu"))))
    }
}
