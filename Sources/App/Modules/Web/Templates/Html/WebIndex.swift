import Vapor
import SwiftHtml

public struct WebIndex: TemplateRepresentable {
    public var context: WebIndexContent
    
    public init(_ context: WebIndexContent) {
        self.context = context
    }
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        Html{
            Head{
                Meta()
                    .name("viewport")
                    .charset("utf-8")
                    .content("width=device-width, initial-scale=1")
                Title(context.title)
                Link(rel: .stylesheet)
                    .href("https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css")
                    .integrity("sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor")
                    .crossorigin(.anonymous)
            }
            Body{
                Div{
                    H1(context.title)
                }.class(["container", "primary"])
                Script()
                    .src("https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js")
                    .integrity("sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2")
                    .crossorigin(.anonymous)
                Script()
                    .src("https://unpkg.com/@popperjs/core@2")
            }
        }
    }
}
